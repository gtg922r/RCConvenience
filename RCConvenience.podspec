Pod::Spec.new do |s|
  s.name         = "RCConvenience"
  s.version      = "0.1.1"
  s.summary      = "Convenience Methods and Categories"
  s.description  = <<-DESC
                   Categories, #defines, and methods to make life easier
                   DESC
  s.homepage     = "https://github.com/gtg922r/RCConvenience"
  s.license  = {:type => 'All rights Reserved', :file => 'LICENSE.txt' } 
  s.author             = 'Ryan Cash'
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/gtg922r/RCConvenience.git", :tag => "0.1" }
  s.source_files  = 'Categories/*.{h,m}','Defines/*.{m,h}'
  s.requires_arc = true

end
