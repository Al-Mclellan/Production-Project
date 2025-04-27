class haraka::install{

Exec { path => ['/bin', '/usr/bin', '/usr/local/bin', '/sbin', '/usr/sbin'] }

file { "/usr/local/src/Haraka-2.8.8.zip":
	ensure => file,
	source => "puppet:///modules/haraka/Haraka-2.8.8.zip",
} ->
exec { 'unzip Haraka-2.8.8':
	cwd => '/usr/local/src',
	command => "unzip Haraka-2.8.8.zip",
	creates => "/usr/local/src/Haraka-2.8.8",
} ->
file { "/usr/local/src/node_modules.zip":
	ensure => file,
	source => "puppet:///modules/haraka/node_modules.zip",
} ->
exec { 'unzip node modules':
	cwd => '/usr/local/src',
	command => "unzip node_modules.zip -d /usr/local/lib",
	creates => "/usr/local/lib/node_modules",
}

}
