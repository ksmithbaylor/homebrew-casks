class VmwareFusion < Cask
  version '6.0.5-2209127'
  sha256 '2f312294eb577568c16204027a12e8050a6aa33c42d175c3b6b3ff3909c51731'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  homepage 'http://www.vmware.com/products/fusion/'
  license :commercial

  binary 'VMware Fusion.app/Contents/Library/vmnet-cfgcli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cli'
  binary 'VMware Fusion.app/Contents/Library/vmrun'
  binary 'VMware Fusion.app/Contents/Library/vmware-vdiskmanager'
  binary 'VMware Fusion.app/Contents/Library/VMware OVF Tool/ovftool'
  app 'VMware Fusion.app'

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{destination_path}/VMware Fusion.app"
  end
  zap :delete => [
                  # note: '~/Library/Application Support/VMware Fusion' is not safe
                  # to delete.  In older versions, VM images were located there.
                  '~/Library/Caches/com.vmware.fusion',
                  '~/Library/Logs/VMware',
                  '~/Library/Logs/VMware Fusion',
                 ]
end
