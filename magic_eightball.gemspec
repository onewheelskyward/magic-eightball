Gem::Specification.new do |spec|
  spec.name          = 'magic-eightball'
  spec.version       = '0.0.0'
  spec.authors       = ['Andrew Kreps']
  spec.email         = ['andrew.kreps@gmail.com']
  spec.description   = %q{My sources say no.}
  spec.summary       = %q{Reply hazy, try again}
  spec.homepage      = 'https://github.com/onewheelskyward/magic-eightball'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
