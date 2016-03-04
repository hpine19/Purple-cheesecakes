print "Enter in a list of positive integers, but don't repeat any numbers. When you are finished, type in '0'" #prompts the user 
import math 

odd = [] #holds all the odd integers 
even = [] #holds all the even integers 

n= 0
while n >= 0:
	n = int(raw_input("Enter in positive integer: "))
	if n == 0:
		break #stops the continuation of having the user enter in another number 
	elif n%2:
		odd.append(n) #if there is a remainder, the number is odd
	else:
		even.append(n) #if there is no remainder the number is even 
print "Even numbers:", len(even), "Odd Numbers:", len(odd) #prints out all even and odd numbers based on the list the user input 