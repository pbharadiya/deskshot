Gem::Specification.new do |s|
  s.name    	    = 'deskshot'
  s.version      = '1.0.2'
  s.date          = '2014-02-24'
  s.summary    = 'Desktop application for taking screenshot'
  s.description = 'Deskshot allows you to take screenshot of your desktop. It also has system tray application along with. It is implemented using JRuby.'
  s.author       = 'Parth Bharadiya'
  s.email         = 'parthbharadiya007@gmail.com'
  s.files          = Dir.glob("lib/**/*") + %w(CHANGELOG.rdoc Manifest.txt README.rdoc)
  s.homepage  = 'http://rubygems.org/gems/deskshot'
  s.license      = 'MIT'
  s.require_paths = ["lib"]
  s.requirements << 'Working installation of JRuby'
  s.post_install_message = "  ==================================================================================== \n
  Thanks for installing! Please go through Documentation provided in http://rubydoc.info/gems/deskshot \n
  == REQUIREMENTS: \n

    * You have to install JRuby if you already do not have. http://jruby.org/download \n
  == GETTING STARTED: \n

  Step 1 : After installing gem, you can simply run following command in your Windows console/Linux Terminal to start Deskshot app \n

    irb -rdeskshot \n

  Step 2 : To take screenshot, Follow File > Take Screenshot or by right clicking System Tray Icon. \n
    Shortcut : Ctrl + Alt + Q (keep your deskshot app on top while using shortcut) \n
  ===================================================================================="

end