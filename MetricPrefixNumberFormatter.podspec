Pod::Spec.new do |s|
  s.name         = "MetricPrefixNumberFormatter"
  s.version      = "1.0.0"
  s.summary      = "NSNumberFormatter subclass designed to format large and small numbers using the metric prefixes."
  s.homepage     = "https://github.com/RenGate/MetricPrefixNumberFormatter"
  s.license  = 'MIT'
  s.authors  = { 'Rostyslav Dovhaliuk' => 'rdovhaliuk@gmail.com' }
  s.social_media_url = 'https://twitter.com/rostyslav_d'
  s.ios.deployment_target = '8.0'
  s.source   = { :git => 'https://github.com/RenGate/MetricPrefixNumberFormatter.git', :tag => s.version.to_s }
  s.source_files  = "Source/*.{swift}"
  s.swift_version = '4.2'
  s.ios.frameworks = "Foundation"
end
