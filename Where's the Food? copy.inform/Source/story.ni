"Where's the Food?" by Hypatia Pine

When play begins: 
	say "You just recently moved from New York City to a farm in Oklahoma.  You misplaced many things as you were moving in.  One of the most important things you lost was your dog food.  The nearest store is 2 hours away and you don't have time for that.  Your dog Woof wants food.  Your job is to find him some. 
			
			HINT: You may want to examine all the characters and items."

Farm is a room. "Here you can see animals and crops."
Corn is a thing in the Farm. Corn can be eaten. Corn is edible.  A description of corn is "You might want to pick it up in case you get hungry later."
After eating corn: 
	say "Now that you have energy, you should go find some food for your hungry dog."

[Farmer John]
Farmer John is a person.  Farmer John is in the Farm.  A description of Farmer John is "A tall man working on his field, you should ask him about a key."
Instead of asking Farmer John about "key": say "The key that unlocks the treasure chest? Go east, you'll find it there."

Your dog Woof is a male animal in the Farm. A description of Woof is "Woof wants food."

Instead of giving corn to Woof: 
	say "Woof takes the corn but spits it back out.  What were you thinking?!"

Barn is east of Farm. "Here you can see a key. There is a shack south from here."

A key is a thing in the Barn. "The key unlocks a treasure chest somewhere south of here."

Shack is a room.  Shack is south of Barn. A description of the shack is "The Shack is your storage room.  You keep everything in here.  The Pool Area is southwest of here."

In the Shack is a blue dog bowl and storage supplies. 
	A description of the bowl is "The bowl is a container where food can be put inside."

[Crows]
Crows are animals in the Shack. A description of crows are "Black scary birds who attack you when they are hungry. You can give them food."

After crows eating corn: say "Woof is still hungry. Go find him food!"

Pool Area is a room.  Pool is southwest from Shack.

[Treasure Chest]
A treasure chest is in the Pool Area. The treasure chest is a closed openable container. It is locked and lockable.  The key unlocks the treasure chest.  Inside the treasure chest is dog food.  

Instead of giving the corn to Farmer John:
	say "Farmer John says thanks, but why would you give him corn that he grew himself?";
	Move Corn to Farmer John.
	
Instead of giving the corn to Crows:
	say "The crows look at you with their beady eyes and snatch the corn out of your hand. Then they fly away like beautiful evil creatures.";
	Move Corn to Crows.
	
Understand "crow" as crows 

Instead of putting food in bowl:
	say "You may want to try pour instead."

Understand the command "giving" as something new. Giving is an action applying to two things.
Understand "giving [something] to [someone]" as giving.

[Put or Pour food in bowl----]
Understand the command "put" as something new. Putting it in is an action applying to two things.
Understand "put [thing] in [something]" as putting it in.

Putting it into is an action applying to two things. Understand "put [thing] in [something]" as putting it in.
Pouring it in is an action applying to two things. Understand "pour [thing] in [something]" as pouring it in.
	
[Pour food in bowl- a desired command]
Every turn:
	If dog food is in bowl for the first time:
		say "Hooray! Now Woof can enjoy a nice snack."
After pouring dog food in bowl:
	say "Now Woof can enjoy a nice snack.";
		end the story finally saying "Now that you have finally found Woof's food, you can enjoy the rest of your day off... or you could find your other misplaced items, it's up to you!" 