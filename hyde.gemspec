Gem::Specification.new do |s|

  s.name = 'minmb-hyde'
  s.version = '1.0'
  s.summary = 'jekyll helper tool'
  s.description = 'a helper tool for constructing jekyll sites'
  s.author = 'Martin Häger'
  s.email = 'martin.hager@minmb.se'
  s.homepage = 'http://minmb.se'

  s.require_path = 'lib'
  
  s.executables = [
    'hyde'
  ]

  s.files = Dir['bin/*', 'lib/**/*', 'skeletons/**/*', 'skeletons/**/.*', 'skeletons/.**/*', 'skeletons/.**/.*']

  s.add_dependency('thor')
  s.add_dependency('rake', '>= 0.8.5')
  s.add_dependency('bundler', '~> 1.0')

end
