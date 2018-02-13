class variable ($var=myvariable) {
#	$var = "newvalue"
	file { '/var/www/html/index.html':
		ensure => file,
		content => "${var}",
#		source => "puppet:///modules/variable/index.html",
	}

}
