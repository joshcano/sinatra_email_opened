require 'gmail'

user = "" # needs username for gmail
pass = "" # needs password for gmail 

gmail = Gmail.connect(user,pass)

gmail.deliver do 
 to "" # your email recipient 
 subject "final-test" 
  html_part do 
   content_type 'text/html; charset=UTF-8'
   body '<h1>I just got your IP.</h1><br><img src="key.png">' 
  end
end  

gmail.logout

system'clear'
