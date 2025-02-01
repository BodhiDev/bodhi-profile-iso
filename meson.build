project('bodhi-profile-iso',
  version: '0.2',
  default_options : ['buildtype=plain'],
  meson_version : '>= 0.58.0'
)

pkgconfig = import('pkgconfig')
efl_depends              = dependency('efl'             , required: true)
e_depends                = dependency('enlightenment'   , required: true)

##### install paths
dir_prefix    = e_depends.get_variable('prefix')
dir_data      = join_paths(dir_prefix, 'share')
dir_prefix    = efl_depends.get_variable('prefix')

dep_eet              = dependency('eet'             , required: true)

subdir('src')
subdir('data')
subdir('etc')
