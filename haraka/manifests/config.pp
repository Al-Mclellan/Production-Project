class haraka::config{

    exec{'creating config files':
        cwd => '/usr/local/src/Haraka-2.8.8',
        command => 'haraka -i /root/haraka',
    } ->
    file {'/root/haraka/config/plugins':
        ensure => file,
        source => "puppet:///modules/haraka/plugins",
        owner => 'root',
    } ->
    file {'/root/haraka/config/host_list':
        ensure => file,
        source => "puppet:///modules/haraka/host_list",
        owner => 'root',
    }
}
