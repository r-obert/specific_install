module SpecificInstall
  require_relative "specific_install/git"
  autoload :SpecificInstallCommand,  'specific_install/specific_install_command'
  autoload :Version,         'specific_install/version'
end
