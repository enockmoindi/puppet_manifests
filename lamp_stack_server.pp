package { 'apache2':
  ensure => installed,
}

package { 'php':
  ensure => installed,
  notify  => Service['apache2'],
  require => Package['apache2'],
}

package { 'php-mysql':
  ensure => installed,
  require => Package['php'],
  notify => Service['apache2'],
}

service { 'apache2':
  ensure => running,
  enable => true,
  require => [Package['apache2'], Package['php']],
}

file { '/var/www/html/phpinfo.php':
  source => '/home/enockmoindi/puppet-dev/phpinfo.php',
  notify  => Service['apache2'],
  require => Package['apache2'],
}

# Install MariaDB server package
package { 'mariadb-server':
  ensure => installed,
}

# Ensure MariaDB service is running and enabled
service { 'mariadb':
  ensure    => running,
  enable    => true,
  require   => Package['mariadb-server'],
}
