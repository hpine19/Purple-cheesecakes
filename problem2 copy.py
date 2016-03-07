#random sequence 
#find a random number between 1-6 for both dice
#find the sum of the two random numbers 

import random
#min= 1
#max= 6
n= 6 #number of sides on the dice 
m= 0 
counter= 0
dice_roll= 0

p= int(raw_input("Enter in the number on the dice (2-12) that you want to keep track of: ")) #number user wants to find the sum of 
while dice_roll < 1000: #when the dice roll is still less than 1000, do the following 
	di1= random.randint(1,6) #the value of the first dice is a random number between 1 and 6
	di2= random.randint(1,6) #the value of the second dice is a random number between 1 and 6
	if di1 + di2== p: #if the random value fo the first dice and the random value of the second dice equal p
		counter= counter+ 1
	dice_roll= dice_roll+ 1

print "Out of 1000 dice rolls, the sum of ", p, "was rolled ", counter, "times." #prints out how many times the sum of the number the user input was rolled 
#print di1 #prints the random value of the first dice
#print di2 #prints the random value fo the second dice 

#print "The sum of the dice roll is", di1 + di2 #prints the sum of the two random values 

#def dice(n):
	#print sum(random.randint(1,6) for _ in range(n))