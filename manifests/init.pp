# See README.md for details
class bash (
  # Package config
  $package_ensure          = $::bash::params::package_ensure,
  $package_name            = $::bash::params::package_name,
  $package_provider        = $::bash::params::package_provider,
  $package_source          = $::bash::params::package_source,
  
  # Bash completion package
  $completion_ensure       = $::bash::params::completion_ensure,
  $completion_name         = $::bash::params::completion_name,
  $completion_provider     = $::bash::params::completion_provider,
  $completion_source       = $::bash::params::completion_source,
  
  # Bash configuration
  $system_bashrc_path      = $::bash::params::system_bashrc_path,
  $system_bashrc_source    = $::bash::params::system_bashrc_source,
  $system_bashrc_template  = $::bash::params::system_bashrc_template,
  $system_bashrc_owner     = $::bash::params::system_bashrc_owner,
  $system_bashrc_group     = $::bash::params::system_bashrc_group,
  $system_bashrc_mode      = $::bash::params::system_bashrc_mode,
  
  # Profile configuration
  $system_profile_path     = $::bash::params::system_profile_path,
  $system_profile_source   = $::bash::params::system_profile_source,
  $system_profile_template = $::bash::params::system_profile_template,
  $system_profile_owner    = $::bash::params::system_profile_owner,
  $system_profile_group    = $::bash::params::system_profile_group,
  $system_profile_mode     = $::bash::params::system_profile_mode,
) inherits ::bash::params {

  anchor { 'bash::begin': } ->
  class { '::bash::install': } ->
  class { '::bash::config': } ->
  anchor { 'bash::end': }

}
