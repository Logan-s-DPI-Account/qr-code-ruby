require "rqrcode"

# qrcode = RQRCode:: QRCode.new("www.logancobell.com")
# qrcode = RQRCode:: QRCode.new("WIFI:T:WPA;S:My wifi DoodleNet;P:DoodleNet2022$;;")
qrcode = RQRCode:: QRCode.new("SMSTO:+17576927038:Hi")

png = qrcode.as_png({ :size => 500 })

IO.binwrite("wifi.png", png.to_s)
