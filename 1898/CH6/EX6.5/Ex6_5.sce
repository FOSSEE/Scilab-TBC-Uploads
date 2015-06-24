clear all; clc;

disp("Scilab Code Ex 6.5 : ")

//Shear and Moment Diagrams:
p = [-1/9 -2 30]
x = roots(p)
y = (x(2));

   
   M = (30*y) - (y^2) - (y^3)/27;



//Display:
    
printf("\n\nThe magnitude of the maximum moment is = %1.0f kNm', M);
printf('\nRefer to the shear and moment diagrams in the book.');


//---------------------------------------------------------------------------END-----------------------------------------------------------------------------

