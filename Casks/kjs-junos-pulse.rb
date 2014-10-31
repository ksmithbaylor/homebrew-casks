class KjsJunosPulse < Cask
  version '5.0.4'
  sha256 '7e8c40dacdbf99ea16cd39f797c339e623fa5710f17453b71dedbef6db746c90'

  url 'https://github.com/ksmithbaylor/homebrew-casks/blob/master/files/junos-pulse.zip?raw=true'
  homepage 'https://github.com/ksmithbaylor/homebrew-casks/tree/master/files'
  license :unknown

  app 'Junos Pulse.app'
  app 'Junos Pulse.app/Contents/Plugins/JamUI/PulseTray.app'
end
