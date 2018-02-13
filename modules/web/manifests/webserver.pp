class web::webserver {
	package { 'apache2':
		ensure => present,
	}
	service { 'apache2':
		ensure => running,
	}
	file { '/var/www/html/index.html':
		ensure => file,
		content => "${facts['hostname']}",
	}	
}
