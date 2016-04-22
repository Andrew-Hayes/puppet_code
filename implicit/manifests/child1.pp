class implicit::child1 {
  file { '/root/testfil1-1':
    ensure => file,
    mode   => '0600',
    content => 'lalalala',
  }
}
