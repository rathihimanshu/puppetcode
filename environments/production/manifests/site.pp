# this is a comment
$myvarible = 'topscope'
node default {
	$myvarible = 'nodescope'
	file { '/root/nodedefinition.txt':
		ensure => file,
		content => "${myvarible}",
	}
#	include web
        include variable
}
node 'node1.medusa.mezzonet.net' {
	file { '/root/node1.txt':
		ensure => file,
	}
	include node1
#	include web
#	include web::newfile
	include variable
}






#package { 'apache2':
#
#	ensure => present,
#}
#service { 'apache2':
#	ensure => running,
#}
#file { '/var/www/html/index.html':
#	ensure => file,
#	content => 'HEYYY',
#}

