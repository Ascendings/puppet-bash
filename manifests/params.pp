# See README.md for details.
class bash::params {
  # Root user defaults
  $root_user               = $::osfamily ? {
    default => 'root',
  }
  # Root group defaults
  $root_group              = $::osfamily ? {
    'FreeBSD' => 'wheel',
    default   => 'root',
  }

  # Package config defaults
  $package_ensure          = installed
  $package_name            = 'bash'
  $package_provider        = $::osfamily ? {
    'Debian'  => 'apt',
    'RedHat'  => 'yum',
    'Suse'    => 'zypper',
    'FreeBSD' => 'pkgng',
    default   => false,
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
    default  => '/etc/bashrc',
  }
  $system_bashrc_source    = false
  $system_bashrc_template  = false
  $system_bashrc_owner     = $root_user
  $system_bashrc_group     = $root_group
  $system_bashrc_mode      = '0644'

  # Profile configuration
  $system_profile_path     = '/etc/profile'
  $system_profile_source   = false
  $system_profile_template = false
  $system_profile_owner    = $root_user
  $system_profile_group    = $root_group
  $system_profile_mode     = '0644'

  # Symlink for bash installation
  $create_symlink          = false
  $symlink_target          = '/usr/local/bin/bash'
  $symlink_name            = '/bin/bash'
}
