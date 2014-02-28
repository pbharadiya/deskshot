require_relative 'tray'
require_relative 'screenshot'

app = TrayApplication.new('Deskshot')
app.item('Take Screenshot') { Screenshot.capture }
app.item('Exit') {puts "Exit!"; java.lang.System::exit(0)}
app.run