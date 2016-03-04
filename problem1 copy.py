# prompt for user input 
#if n is greater than or equal to 0: 
	#prompt user to input 5 positive intergers
		#find the maximum
		#minimum
		#average
#print output 

n= int(raw_input("Enter in how many positive intergers you will be typing: ")) #prompts the user for input 
#n represents the number of intergers the user wants to input
#list= [n1, n2, n3, n4, n5]
counter= 0
list= [] #list of numbers the user input 

while counter < n: #while counter is less than the number the user input do the following 
	i= float(raw_input("Enter in a positive number (they can be decimals): "))
	#i represents the intergers the user inputs
	list.append(i) #holds and saves list of number the user input 
	counter= counter+ 1 #if counter is eequal to counter plus 1 then stop the sequence 

	#n1= float(raw_input("Enter in a positive interger: "))
	#n2= float(raw_input("Enter in a positive interger: "))
	#n3= float(raw_input("Enter in a positive interger: "))
	#n4= float(raw_input("Enter in a positive interger: "))
	#n5= float(raw_input("Enter in a positive interger: "))


print "The maximum number is", max(list) #prints out the maximum number that the user input
print "The minimum number is", min(list) #prints out the minimum number that the user input
print "The average is", sum(list) / len(list)  #prints out the average of all the numbers numbers that the user input

