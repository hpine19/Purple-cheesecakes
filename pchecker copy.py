#ask user for input, must contain at least 8 characters and includes one number and one letter 
	#check to see whether or not password is valid or invalid
		#if password== 8 characters, 1 number, 1 letter:
			#print "Your password is valid"
			#elif:
				#print "Your password is invalid, please have at least 8 characters, 1 number, and 1 letter. Do not inlcude any spaces or special characters"

minP= 8 #is the minimum length that the password can be 
n= 0
p= (raw_input("Enter in a password that has at least 8 chacaracters and includes 1 number and 1 letter. Please do not use spaces, or any special characters: ")) #p is the password the user input 

if len(p) < minP: #if p is less than the value of 8, print the following 
	print "Your password is too short, it does not contain 8 characters." 
	p= (raw_input("Enter in a password that has at least 8 chacaracters and includes 1 number and 1 letter. Please do not use spaces, or any special characters: "))
	character= p[n: n+1]
	if character.isalnum():
		print "Password has a numebr"
	if character.isalpha():
		print "Password had a letter"




'''
if p.isalnum()== p: #if p(password) does not contain a number or a letter, print the following 
	print p.isalnum()
	if p.isalnum()== True:
		print "Your password is invalid. Please include at least 1 letter and 1 number."
		p= (raw_input("Enter in a password that has at least 8 chacaracters and includes 1 number and 1 letter. Please do not use spaces, or any special characters: "))
if p.isalpha()== p:
	print p.islapha()
if len(p) >= minP and p.isalnum()== p: #checks to see if password has 8 characters, 1 letter and 1 number 
	print "Your password is valid."

if len(p) >= minP:
	print "Your password is valid."
'''