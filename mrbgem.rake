MRuby::Gem::Specification.new('mruby-socket') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Internet Initiative Japan'

  spec.cc.include_paths << "#{build.root}/src"
  if ENV['OS'] == 'Windows_NT'
    spec.linker.libraries << ['ws2_32']
  end

  spec.add_dependency('mruby-io')
  spec.add_dependency('mruby-mtest')
end
