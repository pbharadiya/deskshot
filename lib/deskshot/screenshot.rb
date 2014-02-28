class Screenshot
  include Java

  import java.awt.FileDialog #For File save as Dialog
  import java.awt.Robot
  import java.awt.Toolkit
  import java.awt.Rectangle
  import javax.imageio.ImageIO

  def self.capture
    begin
      output            = FileDialog.new(nil, "Save as", FileDialog::SAVE)
      defaultfilename = Time.now.strftime("%F %H-%M-%S")
      output.setFile(defaultfilename + ".png")
      output.show
      filename          = output.getDirectory + output.getFile
      #to avoide conflict of capturing own menu/window itself
      sleep 1

      robot       = Robot.new
      toolkit      = Toolkit.get_default_toolkit
      dim          = toolkit.get_screen_size
      rectangle  = Rectangle.new(0, 0, dim.get_width, dim.get_height)
      image       = robot.create_screen_capture(rectangle)
      file           = java::io::File.new(filename)
      ImageIO::write(image, "png", file)
    rescue Exception
    end
  end
end