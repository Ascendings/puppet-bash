# See README.md for details.
class bash::config inherits ::bash {
  
  # /etc/bash.bashrc
  if $::bash::system_bashrc_source {
    file { $::bash::system_bashrc_path:
      ensure => present,
      owner  => $::bash::system_bashrc_owner,
      group  => $::bash::system_bashrc_group,
      mode   => $::bash::system_bashrc_mode,
      source => $::bash::system_bashrc_source,
    }
  } elsif $::bash::system_bashrc_template {
    file { $::bash::system_bashrc_path:
      ensure  => present,
      owner   => $::bash::system_bashrc_owner,
      group   => $::bash::system_bashrc_group,
      mode    => $::bash::system_bashrc_mode,
      content => template($::bash::system_bashrc_template),
    }
  } else {
    notify("Using default bashrc file.")
    file { $::bash::system_bashrc_path:
      ensure => present,
      owner  => $::bash::system_bashrc_owner,
      group  => $::bash::system_bashrc_group,
      mode   => $::bash::system_bashrc_mode,
      source => 'puppet:///modules/bash/etc.bashrc',
    }
  }
  
  # /etc/profile
  if $::bash::system_profile_source {
    file { $::bash::system_profile_path:
      ensure => present,
      owner  => $::bash::system_profile_owner,
      group  => $::bash::system_profile_group,
      mode   => $::bash::system_profile_mode,
      source => $::bash::system_profile_source,
    }
  } elsif $::bash::system_profile_template {
    file { $::bash::system_profile_path:
      ensure  => present,
      owner   => $::bash::system_profile_owner,
      group   => $::bash::system_profile_group,
      mode    => $::bash::system_profile_mode,
      content => template($::bash::system_profile_template),
    }
  } else {
    notify("Using default bash profile file.")
    file { $::bash::system_profile_path:
      ensure => present,
      owner  => $::bash::system_profile_owner,
      group  => $::bash::system_profile_group,
      mode   => $::bash::system_profile_mode,
      source => 'puppet:///modules/bash/etc.profile',
    }
  }

}
