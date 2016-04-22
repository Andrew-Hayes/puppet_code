class cntn_depend::child2 {
  file { '/root/testfile2-1':
    ensure => file,
    mode   => '0600',
    content => 'lalalala2',
    before => File['/root/testfil1-1'],
    require => Class['cntn_depend::child1']
  }
}
