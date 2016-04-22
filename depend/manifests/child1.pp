class depend::child1 {
  file { '/root/testfil1-1':
    ensure => file,
    mode   => '0600',
    content => 'lalalala',
  }
  service { 'unicorn' :
    ensure   => running,
    before   => File['/root/testfil1-1'],
  }
}
