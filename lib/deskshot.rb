require 'deskshot/tray_app'
require 'deskshot/screenshot'

include Java

import java.awt.event.KeyEvent
import java.awt.event.ActionEvent
import javax.swing.JFrame
import javax.swing.JMenuBar
import javax.swing.JMenu
import javax.swing.JMenuItem
import javax.swing.KeyStroke
import java.lang.System


class DeskShot < JFrame
  def initialize
    super "Deskshot"
    self.initUI
  end

  def initUI
    menubar = JMenuBar.new

    fileMenu = JMenu.new "File"
    $VERBOSE = nil #to supress warning of setMnemonic
    fileMenu.setMnemonic KeyEvent::VK_F

    fileNew = JMenuItem.new "Take Screenshot!"
    fileNew.addActionListener do
      self.setVisible false
      Screenshot.capture
      self.setVisible true
    end
    fileNew.setAccelerator KeyStroke.getKeyStroke KeyEvent::VK_Q, 10
    #10 is a combination of 8 + 2, 8 is ALT, 2 is CTRL

    fileExit = JMenuItem.new "Exit"
    fileExit.addActionListener { puts "Exit!"; System.exit 0 }
    fileExit.setAccelerator KeyStroke.getKeyStroke KeyEvent::VK_W, 2

    fileMenu.add fileNew
    fileMenu.add fileExit

    menubar.add fileMenu

    self.setJMenuBar menubar

    self.setDefaultCloseOperation JFrame::EXIT_ON_CLOSE
    self.setSize 230, 110
    self.setLocationRelativeTo nil
    self.setVisible true
  end
end

DeskShot.new