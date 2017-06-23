class { 'opendaylight':
   default_features =>  ['config', 'standard', 'region', 'package', 'kar', 'ssh', 'management'],
   extra_features   =>  ['odl-dlux-core',
                         'odl-restconf',
                         'odl-l2switch-switch',
                         'odl-mdsal-apidocs',
                         'odl-dlux-node',
                         'odl-dlux-yangui',
                         'odl-dluxapps-applications',
                         'odl-dluxapps-nodes',
                         'odl-dluxapps-topology',
                         'odl-dluxapps-yangutils',
                         'odl-dlux-yangvisualizer',
                         'odl-dluxapps-yangman'],
}

