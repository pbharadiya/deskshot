class TrayApplication
  include Java

  import java.awt.TrayIcon
  import java.awt.Toolkit

  attr_accessor :menu_items

  def initialize(name)
    @menu_items = []
    @name = name
    puts "Application is started successfully!! Right click on Tray Icon"
  end

  def item(label, &block)
    item = java.awt.MenuItem.new(label)
    item.add_action_listener(block)

    @menu_items << item
  end

  def run
    popup = java.awt.PopupMenu.new
    @menu_items.each { |i| popup.add(i)}
    abs_path = File.dirname(__FILE__)
    image = java.awt.Toolkit::default_toolkit.get_image(abs_path + '/deskshot_icon.png')
    tray_icon = TrayIcon.new(image, @name, popup)
    tray_icon.image_auto_size = true

    tray = java.awt.SystemTray::system_tray
    tray.add(tray_icon)
  end
end