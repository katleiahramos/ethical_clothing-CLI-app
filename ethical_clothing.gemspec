
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ethical_clothing/version"

Gem::Specification.new do |spec|
  spec.name          = "ethical_clothing"
  spec.version       = EthicalClothing::VERSION
  spec.authors       = ["Katleiah"]
  spec.email         = ["katleiahramos@gmail.com"]
  spec.summary       = %q{Access to a list of ethical clothing brands and their information.}
  spec.homepage      = "https://github.com/katleiahramos/ethical_clothing-CLI-app"
  spec.license       = "MIT"



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
                              f.match(%r{^(test|spec|features)/})
                            end
  # spec.bindir        = "exe"
  spec.executables   = ["ethical-clothing"]
  spec.require_paths = ["lib", "lib/ethical_clothing"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
