//Initilization of variables
W=1000 //N
Lab=1 //m
Lac=0.6 //m
theta=60 //degree //angle made by the beam with the horizontal
//Calculations
Q=(W*Lac*cosd(theta))/(Lab*cosd(theta)) //N // from eq'n 2
P=W-Q //N // from eq'n 1
//Results
clc
printf('The load taken by man P is %f N \n',P)
printf('The load taken by man Q is %f N \n',Q)
