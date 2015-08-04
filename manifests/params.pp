# See README.md for details.
class bash::params {
  # Package config defaults
  $package_ensure          = installed
  $package_name            = 'bash'
  $package_provider        = $::osfamily ? {
    'Debian' => 'apt',
    'RedHat' => 'yum',
    'Suse'   => 'zypper',
    default  => false,
  }
  $package_source          = false
  
  # Bash completion package
  $completion_ensure       = installed
  $completion_name         = 'bash-completion'
  $completion_provider     = $package_provider
  $completion_source       = false
  
  # Bash configuration
  $system_bashrc_path      = $::osfamily ? {
    'Debian' => '/etc/bash.bashrc',
    'RedHat' => '/etc/bashrc',
  }
  $system_bashrc_source    = false
  $system_bashrc_template  = false
  $system_bashrc_owner     = 'root'
  $system_bashrc_group     = 'root'
  $system_bashrc_mode      = '0644'
  
  # Profile configuration
  $system_profile_path     = '/etc/profile'
  $system_profile_source   = false
  $system_profile_template = false
  $system_profile_owner    = 'root'
  $system_profile_group    = 'root'
  $system_profile_mode     = '0644'
}