## --------------------------------------------------------------------------------
## NOTE:
## This file is not really used at the moment - the *REAL* copy is inside 
## the Rakefile and invoked via 'rake package'
## --------------------------------------------------------------------------------
Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'dps-actionwebservice'
  s.summary = "Web service support for Action Pack."
  s.description = %q{Adds WSDL/SOAP and XML-RPC web service support to Action Pack}
  s.version = "2.3.5.#{Time.now.strftime('%Y%m%d%H%M%S')}"

  s.author = "Laurence A. Lee, Leon Breedt, Kent Sibilev"
  s.email = "rubyjedi@gmail.com, bitserf@gmail.com, ksibilev@yahoo.com"
  s.homepage = "http://wiki.github.com/rubyjedi/actionwebservice/"

  s.add_dependency('activesupport', '~> 2.3.0')
  s.add_dependency('actionpack',    '~> 2.3.0')
  s.add_dependency('activerecord',  '~> 2.3.0')

  s.has_rdoc = true
  s.requirements << 'none'
  s.require_path = 'lib'
  s.autorequire = 'actionwebservice'

  s.files = [ "Rakefile", "setup.rb", "README", "TODO", "CHANGELOG", "MIT-LICENSE" ]
  s.files = s.files + Dir.glob( "examples/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
  s.files = s.files + Dir.glob( "lib/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
  s.files = s.files + Dir.glob( "test/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
  s.files = s.files + Dir.glob( "generators/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
end
