/*
  MeggyJr_CheckButtonsDown.pde
 
 Example file using the The Meggy Jr Simplified Library (MJSL)
 from the Meggy Jr RGB library for Arduino
 
 Test which buttons are currently pressed.  
 
 
 Version 1.3 - 1/3/2009
 Copyright (c) 2009 Windell H. Oskay.  All right reserved.
 http://www.evilmadscientist.com/
 
 This library is free software: you can DimGreenistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This library is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this library.  If not, see <http://www.gnu.org/licenses/>.
 	  
 */

 


#include <MeggyJrSimple.h>    // RequiDimGreen code, line 1 of 2.

int xdot = 0;                // declaring variables for x and y coordinates
int ydot = 2; 
int dotcolor = DimAqua;

int xgoal = 7;               // declaring variables for x and y coordinates (goal)
int ygoal = 5; 

int LevelNum = 1;     // variable for level numbers 

int xwalls4[64]= {0,0,0,1,1,2,2,3,3,3,3,3,4,4,4,5,5,6,6,6,6,7,7};     // arrays for level 4
int ywalls4[64]= {3,6,7,1,6,0,3,0,1,5,6,7,0,2,3,4,6,1,2,3,6,6,7};

int Level2Color = 14;     // level 2 color for blinks 
int NumLevel2 = 0; 

void setup()                    // run once, when the sketch starts
{

  MeggyJrSimpleSetup();      

}  // End setup()

void loop()                     // run over and over again
{   
  ClearSlate();  
  
  if (LevelNum == 1)
  {
    FirstLevel();
    DrawPx(xdot,ydot,DimAqua);
  }
  
      
  if (LevelNum == 2)
  {
    EditColor (20,8,4,11);
    SecondLevel();
  }  
  
  if (LevelNum == 3)
  {
    ThirdLevel();
  }
  
  if (LevelNum == 4)
  {
    FourthLevel();
  } 
      
    CheckButtonsDown();   //Check to see which buttons  are down.   

  if (Button_Up)        
    ydot = ydot + 1;    // increase y coordinate by 1
  if (ydot > 7)         // keeps corrdinate from going off the screen
     ydot = 0; 
     
  if (Button_Down)       
    ydot = ydot - 1;    // decrease y coordinate by 1
  if (ydot < 0)         // keeps coordinate from going off the screen
     ydot = 7; 

  if (Button_Right)    
     xdot = xdot + 1;   // increase x coordinate by 1
  if (xdot > 7)         // keeps coordinate from going off the screen
     xdot = 0;   

  if (Button_Left) 
     xdot = xdot - 1;   // decrease x coordinate by 1
  if (xdot < 0)         // keeps coordinate from going off the screen 
     xdot = 7;   
     
  if (LevelNum == 1)     // checking for collision with walls
  {
    if (ReadPx(xdot,ydot)==DimYellow)
      {
        xdot = 0;
        ydot = 2;
      }
  }
  
  if (LevelNum == 1)    // checking if goal is reached on first level
  {
    if (ReadPx(xdot,ydot)==White)
      {
        LevelNum = LevelNum + 1;     // increasing level by 1
        xdot = 6;     // new x and y coordinates for level 2
        ydot = 6;
        dotcolor = Red;  
      }
  }
  
  if (LevelNum == 2)      // checking for collision with walls 
  {
    if ((ReadPx(xdot,ydot)==DimViolet) or (ReadPx(xdot,ydot)==16))
      {
        xdot = 6;
        ydot = 6;
      }
  }
  
  if (LevelNum == 2)     // checking if goal is reached on second level 
  {
    if (xdot == 1 && ydot == 0)
      {
        LevelNum = LevelNum + 1;     // increasing level by 1 
        xdot = 1;     // new x and y coordinates for level 3
        ydot = 6;
        dotcolor = 13;
        EditColor(13,4,9,0);
      }
  }
  
  if (LevelNum == 3)     // checking for collision with walls
  {
    if (ReadPx(xdot,ydot)==17)
      {
        xdot = 1;
        ydot = 6;
      }
  }
  
  if (LevelNum == 3)     // checking if goal is reached
  {
    if (ReadPx(xdot,ydot)==14)
      {
        LevelNum = LevelNum + 1;     // increasing level by 1
        xdot = 0;     // new x and y coordinates for level 4
        ydot = 0;
        dotcolor = 25;
        EditColor(25,20,0,5);
      }
  }
  
  if (LevelNum == 4)     // checking for collision with walls 
  {
    for (int i = 0; i < 24; i ++)
    {
      if(xdot == xwalls4[i] && ydot == ywalls4[i])
      {
        xdot = 0;
        ydot = 0;
      }
    }
  }
  
  if (LevelNum == 4)     // checking if goal is reached 
  {
    if (xdot == 5 && ydot == 3)
      {
        ForTheWin();
      }
  }
     
        
  DrawPx(xdot,ydot,dotcolor);
  
  DisplaySlate();      // Write the updated game buffer to the screen.
  delay(100);

}    // end of main loop

void ForTheWin()
{
  ClearSlate();
  for (int p = 0; p < 8; p++)
  {                         
      for (int f = 0; f < 8; f++)
       {                          //start of DrawPx
           DrawPx(p,f,DimAqua);
       }    //end of DrawPx 
       DisplaySlate();
       delay(500);
  } 
}  // end of for the win  

void FirstLevel()    // draws the first level of the maze

{ 
  DrawPx(0,0,DimYellow);        // first maze
  DrawPx(0,1,DimYellow);
  DrawPx(1,1,DimYellow);
  DrawPx(1,0,DimYellow);
  DrawPx(2,0,DimYellow); 
  DrawPx(4,0,DimYellow);
  DrawPx(5,0,DimYellow);
  DrawPx(7,0,DimYellow);
  DrawPx(7,1,DimYellow);
  DrawPx(0,3,DimYellow);
  DrawPx(1,3,DimYellow);
  DrawPx(2,3,DimYellow);
  DrawPx(3,3,DimYellow);
  DrawPx(3,2,DimYellow);
  DrawPx(5,1,DimYellow);
  DrawPx(5,2,DimYellow);
  DrawPx(2,4,DimYellow);
  DrawPx(2,5,DimYellow);
  DrawPx(1,5,DimYellow);
  DrawPx(7,5,White);            // goal
  DrawPx(7,2,DimYellow);
  DrawPx(7,3,DimYellow);
  DrawPx(6,5,DimYellow);
  DrawPx(5,5,DimYellow);
  DrawPx(5,3,DimYellow);
  DrawPx(4,5,DimYellow);
  DrawPx(6,0,DimYellow);
  DrawPx(6,1,DimYellow);
  DrawPx(7,4,DimYellow);
  DrawPx(7,7,DimYellow);
  DrawPx(6,7,DimYellow);
  DrawPx(5,7,DimYellow);
  DrawPx(4,7,DimYellow);
  DrawPx(1,6,DimYellow);
  DrawPx(2,6,DimYellow);
}  // end of first level

void SecondLevel()    // draws the second level of the maze (blinking)

{       // changing color back and forth between purple and no color 
  EditColor(16,0,0,1);
  
  NumLevel2 = NumLevel2 + 1;
  if(NumLevel2 % 2 == 0)
    {
      Serial.println("switch to 16");
      Level2Color = 16;
    }
    else
    {
      Serial.println("switch to 14");
      Level2Color = 14;
    }     // end of checking times through draw level 2 to switch wall colors 
  
  
  DrawPx(0,0,Level2Color);     // second maze 
  DrawPx(0,1,Level2Color);
  DrawPx(0,2,Level2Color);
  DrawPx(0,3,Level2Color);
  DrawPx(0,4,Level2Color);
  DrawPx(0,5,Level2Color);
  DrawPx(0,6,Level2Color);
  DrawPx(0,7,Level2Color);
  DrawPx(1,7,Level2Color);
  DrawPx(1,2,Level2Color);
  DrawPx(2,2,Level2Color);
  DrawPx(2,3,Level2Color);
  DrawPx(2,7,Level2Color);
  DrawPx(2,6,Level2Color);
  DrawPx(2,5,Level2Color);
  DrawPx(2,0,Level2Color);
  DrawPx(3,0,Level2Color);
  DrawPx(4,0,Level2Color);
  DrawPx(5,0,Level2Color);
  DrawPx(7,0,Level2Color);
  DrawPx(4,2,Level2Color);
  DrawPx(5,2,Level2Color);
  DrawPx(5,1,Level2Color);
  DrawPx(6,2,Level2Color);
  DrawPx(4,3,Level2Color);
  DrawPx(4,4,Level2Color);
  DrawPx(5,4,Level2Color);
  DrawPx(7,4,Level2Color);
  DrawPx(7,5,Level2Color);
  DrawPx(7,6,Level2Color);
  DrawPx(7,7,Level2Color);
  DrawPx(6,7,Level2Color);
  DrawPx(5,7,Level2Color);
  DrawPx(5,6,Level2Color);
  DrawPx(4,6,Level2Color);
  DrawPx(1,0,11);     // goal
  EditColor(11,8,3,17);     
  
  /*DisplaySlate ();     // blinks 
  delay(100);
  
  ClearSlate();
  DisplaySlate();  
*/  
  
} // end of second level 

void ThirdLevel()     // draws third level of the maze 

{
  EditColor(17,3,9,5);
  DrawPx(0,0,17);     // third maze 
  DrawPx(0,3,17);
  DrawPx(0,6,17);
  DrawPx(0,7,17);
  DrawPx(1,0,17);
  DrawPx(1,1,17);
  DrawPx(1,4,17);
  DrawPx(1,5,17);
  DrawPx(1,7,17);
  DrawPx(2,2,17);
  DrawPx(3,1,17);
  DrawPx(3,4,17);
  DrawPx(3,5,17);
  DrawPx(3,6,17);
  DrawPx(4,1,17);
  DrawPx(4,6,17);
  DrawPx(5,1,17);
  DrawPx(5,4,17);
  DrawPx(5,6,17);
  DrawPx(6,0,17);
  DrawPx(6,2,17);
  DrawPx(6,3,17);
  DrawPx(6,4,17);
  DrawPx(7,0,17);
  DrawPx(7,6,17);
  DrawPx(2,1,14);     // goal   
  EditColor(14,15,3,10);
}     // end of third level 

void FourthLevel()     // draws the fourth level of the maze (invisible) 

{
  EditColor(21,10,18,15); 
  DrawPx(0,3,Dark);     // fourth maze 
  DrawPx(0,6,Dark);
  DrawPx(0,7,Dark);
  DrawPx(1,1,Dark);
  DrawPx(1,6,Dark);
  DrawPx(2,0,Dark);
  DrawPx(2,3,Dark);
  DrawPx(3,0,Dark);
  DrawPx(3,1,Dark);
  DrawPx(3,5,Dark);
  DrawPx(3,6,Dark);
  DrawPx(3,7,Dark);
  DrawPx(4,0,Dark);
  DrawPx(4,2,Dark);
  DrawPx(4,3,Dark);
  DrawPx(5,4,Dark);
  DrawPx(5,6,Dark);
  DrawPx(6,1,Dark);
  DrawPx(6,2,Dark);
  DrawPx(6,3,Dark);
  DrawPx(6,6,Dark);
  DrawPx(7,6,Dark);
  DrawPx(7,7,Dark);
  DrawPx(5,3,21);     // goal
  //EditColor(19,3,13,1);
}     // end of fourth maze 
