class unicorn {
  file { '/tmp/skip' :
    ensure   => present,
    owner    => 'root',
    group    => 'root',
  }
 
  file { '/tmp/unchanged' :
    ensure   => present,
    owner    => 'root',
    group    => 'root',
  }

  notify { 'change':  }

  file { '/tmp/nooop' :
    ensure => present,
    owner  => 'root',
    group  => 'root',
    noop   => true,
  }
 
  service { 'unicorn' :
    ensure   => running,
    before   => File['/tmp/skip'],
  }
}
