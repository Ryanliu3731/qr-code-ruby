# Write your solution here!
require "rqrcode"

# Use the RQRCode::QRCode class to encode some text
qrcode = RQRCode::QRCode.new("WIFI:T:WPA;S:WWDX1102;P:wwdxlhlh;;")

# Use the .as_png method to create a 500 pixels by 500 pixels image
png = qrcode.as_png({ :size => 500 })

# Write the image data to a file
IO.binwrite("sometext.png", png.to_s)
