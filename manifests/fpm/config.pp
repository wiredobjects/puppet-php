# PRIVATE CLASS: do not use directly
class php::fpm::config {

  $config_file             = $php::fpm::config_file
  $include_dir             = $php::fpm::include_dir
  $log_dir                 = $php::fpm::log_dir
  
  # Ensure PHP-FPM instance dir is present
  file { $include_dir:
    ensure  => directory,
    mode    => '0755',
    recurse => $php::fpm::purge_conf_dir,
    purge   => $php::fpm::purge_conf_dir,
  }
  
  # Ensure PHP-FPM LogDir is present
  file { $log_dir:
    ensure => directory,
    mode   => '0770',
    owner  => 'root',
    group  => 'root',
  }
}