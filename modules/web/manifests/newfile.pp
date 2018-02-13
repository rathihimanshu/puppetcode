class web::newfile {
	file { "/root/${facts['hostname']}":
		ensure => file,
	}
}
