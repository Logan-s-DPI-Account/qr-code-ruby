require "rqrcode"


p "If you would you like to create a QR code to go to a  URL enter 1, send a text enter 2, sign on to a wifi network enter 3, or to exit this program enter 4"
  user_selection = gets.chomp.to_i

if 1 == user_selection
  p "Enter a URL and let's create a QR code to take users to your chosen site!"
  url_to_code = gets.chomp
  url_to_code = RQRCode:: QRCode.new(url_to_code)

  png = url_to_code.as_png({ :size => 500 })

  IO.binwrite("url_to_code.png", png.to_s)

elsif 2 == user_selection
      
       p "enter the phone number you wish to text"
      phone_number = gets.chomp 
      phone_number = RQRCode:: QRCode.new("SMSTO:+17576927038:Hi")
      png = phone_number.as_png({ :size => 500 })
      IO.binwrite("phone_number.png", png.to_s)
       

elsif user_selection == 3
  p "Enter your networks name"
  network_name = gets.chomp
  p "Enter your networks password" 
  network_password = gets.chomp
 
  # qrcode = RQRCode:: QRCode.new("WIFI:T:WPA;S:My wifi network_name;P:network_password;;")
  qrcode = RQRCode:: QRCode.new("WIFI:T:WPA;S:#{network_name};P:#{network_password};;")

  png = qrcode.as_png({ :size => 500 })

  IO.binwrite("qrcode.png", png.to_s)

elsif user_selection == 4
  p "Have a nice Day!"
end 
