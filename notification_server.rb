require 'sinatra'


get '/:dude' do
  temp = params[:dude].split(".")[0]
# ^ this is the image the email is requesting when its opened
  
  if temp == "key"
      print "Email Opened at #{Time.now.to_s} from ip:#{request.ip}\n" # If your email was opened AND it the picture was named "key".* you will get a message in your terminal
      '<img src="track.png">'
  else
      '<img src="track.png">'
  end
 
# reguardless what image is requested you will always get "track.png"
end
