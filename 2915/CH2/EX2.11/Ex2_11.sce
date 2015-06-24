//Example 2.11
//To check the solution of triangle using Mollweide equation
clc,clear

c=6.09 //side oposite to vertex C
a=5 //side opposite to vertex A
b=3 //side opposite to vertex B

A=54.7 //angle at vertex A
B=29.3 //angle at vertex B
C=96 //angle at vertex C

LHS = (a-b)/c
RHS = sind((A-B)/2)/cosd(C/2)
printf(' LHS =  (a-b)/c               = %.4f\n',LHS)
printf('  RHS =  sin((A-B)/2)/cos(C/2) = %.4f\n\n',RHS)

printf('Small difference in LHS and RHS is due to rounding off.\ni.e.Mollweides equation is holding true.\n')
printf('THE SOLUTION OF TRIANGLE IS CORRECT')
