#robotx= 0
#roboty= 0
#north= 2
#south= 3
#west= 4
#east= 5
#random(2,5)
	#if 2
		#move robot 2 coordinates north
	#if 3
		#move robot 3 coordinates south
	#if 4
		#move robot 4 coordinates west
	#if 5
		#move robot 5 coordinates east  
import random 
def twoDRandomWalk(n= 100, printOn= False):
	n= 0
	location= 0
	count= 0
	x= 0
	y= 0

	while abs(location) != n:
		step= random.randint(3, 6)
		if step== 3:
			step= x- 1
		elif step== 4:
			step= x+ 1
		elif step== 5:
			step= y- 1
		elif step== 6:
			step= y+ 1
		location= location+ step 
		print location
		count= count+ 1

	return count 
print (twoDRandomWalk(n= 100, printOn= False))
'''
robotx= 0
roboty= 0
north= 2
south= 3
east= 4
west= 5

ran_direction= [north,south,east,west]


	if north:
		roboty= roboty+ 1
	if south:
		roboty= roboty- 1
	if east:
		robotx= robotx+ 1
	if west:
		robotx= robotx- 1
'''