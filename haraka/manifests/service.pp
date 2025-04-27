class haraka::service{

    exec{'Runs Haraka':
        command => "sudo haraka -c /root/haraka"
    }

}
