# projectHouse

Assignment 1: House

Objective 
Upon completing this assignment, you should be able to implement a simple class, as well as gain a better understanding of the building and use of classes and objects.

Task 
You are to write a class called House, using filenames House.swift that will allow creation and handling of House objects as described below. You can run/test your code in your main.swift

House Dimensions 
Each house object should be pictured as follows: 
The base of the house is a square with a given side length. Minimum length is 3, maximum is 37. This will be referred to as the base size of the house. 
The roof of the house is an equilateral triangle 
An equilateral triangle is a triangle in which all three sides are equal length 
The roof will always overhang the base by one length unit on each side, so the length of the triangle’s side will always be 2 units more than the length of the square’s side
Any calculations for the object are based on the dimensions described above. The ASCII drawing we will do is an approximation of this 
Example house image with a base size 5:


Class Details

The single initializer for the House class should have 3 parameters: an integer size (required), which is the base size of the house; a border character (optional, with a default of uppercase ‘X’); and a fill character (optional, with a default of ‘*’). If the size provided is less than 3, set the size to 3. If the size provided is greater than 37, set the size to 37. Border and fill characters should also be checked, see allowed characters in the 4th step. The class will need to provide internal storage for any member data that must be kept track of. 

There should be computed properties perimeter, and area, which will return the perimeter of the house, and the area of the house, respectively. The perimeter should return integer results. The area should return its result as a double. Note that for area, you’ll need to compute the areas of the triangle root and the square base, and combine them.

There should be member functions grow() and shrink(), which will increase or decrease respectively the base size of the house by 1 unless this would cause the size to go out of bounds (out of the 3-37 range). If the size would go out of bounds, grow() and shrink() should make no change to the size.

The characters that should be allowed for the border or fill characters are any characters from the ‘!’ (ASCII 33) up through the ‘~’ (ASCII 126). If an attempt is made to set the border or fill characters to anything outside the allowable range, the function should set the border or fill back to its original default (the ones listed for the initializer – the border default is ‘X’, the fill default is ‘*’). 

There should be a method (member function) called draw() that will display a picture of the house on the screen. You may assume that the cursor is already at the beginning of a line when the function begins, and you should make sure that you leave the cursor on the line following the picture afterwards (i.e. print a newline after the last line of the house). Use the border character to draw the border of the house, and use the fill character to draw the internal characters. Separate the characters on a line in the picture by a single space to make the house look more proportional (to approximate the look of an equilateral triangle and a square). This must be handled with loops. You will only print out the newline, spaces, the border character, and maybe the fill character on any given line. Note that the bottom of the root and the top of the base will be on a shared line – the overhand area will be border characters, but everything internal will be filled. See the sample run on the assignment at the end of this document to see exactly how this should look. 

Override a member variable called description after conforming to CustomStringConvertible protocol that displays all information about a house: its base size, perimeter, area, and a picture of what it looks like. When displaying the area (decimal data), always show exactly 2 decimal places. Your output should be in the exact same format as mine (seen in the sample run). I am providing a sample driver program called main.swift that uses objects of type House and illustrates sample usage of the methods. You can get the main.swift on the google classroom. Your class declaration and definition files must work with the main program as is (do not change the program to make your code work). You are encouraged to write your own driver routines to further test the functionality of your class as well. Most questions about the required behavior of the class can be determined by carefully examining the driver and sample run. Keep in mind this is just a sample, your class must meet the requirements listed in the specification and not just satisfy this driver program (for instance, not all illegal fill characters are tested). Your class will be tested with a larger set of calls than this main program represents. 


General Requirements
No global variables, other than constants!
Your program must compile and run. (Compile-error results in zero.)
All member stored data of your class must be private(set) except for fill and border.
When you write source code, it should be readable and well documented 
