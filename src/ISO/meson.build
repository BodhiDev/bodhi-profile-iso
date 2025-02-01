dir_config = join_paths(dir_data, 'enlightenment/data/config')

##### eet data compression tool
eet_cmd = get_option('eet')
if eet_cmd == ''
  eet_cmd = join_paths(dep_eet.get_variable('prefix'),
                        'bin', 'eet')
endif

dir = 'ISO'
src = [
  'e',
  'module.battery',
  'module.clock',
  'module.comp',
  'module.conf',
  'module.everything-files',
  'module.everything',
  'module.fileman',
  'module.gadman',
  'module.ibar',
  'module.mixer',
  'module.notification',
  'module.pager',
  'module.places',
  'module.syscon',
  'module.tasks'  
]

##### config build with eet command
i = 0
foreach cd: src
  custom_target(' '.join(['config_dist', dir, cd]),
		input        : cd + '.src',
		output       : cd + '.cfg',
		command      : [eet_cmd, '-e', '@OUTPUT@', 'config', '@INPUT@', '1'],
		install      : true,
		install_dir  : join_paths(dir_config, dir),
                install_mode : 'rw-r--r--'
               )
  i += 1
endforeach

install_data([ 'icon.png',
               'profile.desktop'
             ],
             install_dir  : join_paths(dir_config, dir),
             install_mode : 'rw-r--r--'
            )
