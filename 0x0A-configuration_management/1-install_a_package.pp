# installs puppet-lint pkg

package {'flask':
  ensure   => '2.1.0',
  name     => 'flask',
  provider => 'pip3'
}
