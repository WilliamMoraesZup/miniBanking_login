Pod::Spec.new do |spec|
  spec.name          = "miniBanking_login"
  spec.version       = "0.0.1"
  spec.summary       = "Login module for miniBanking app"
  spec.description   = "Module containing login feature for miniBanking app"
  spec.homepage      = "https://github.com/brunovsc/miniBanking_login.git"
  spec.license       = "None"
  spec.author        = { "Bruno Vieira" => "brunoscvieira@gmail.com" }
  spec.platform      = :ios, 13.0
  spec.swift_version = '5.0'
  spec.source        = { :git => "https://github.com/brunovsc/miniBanking_login.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources", "Sources/**/*.{swift}"
  spec.exclude_files = "Sources/Exclude"
  spec.resources     = "Resources/*.png"
  #spec.dependency "JSONKit", "~> 1.4"
end
