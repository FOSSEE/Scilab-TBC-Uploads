// Initilization of variables
h_1=9 // m // height of first bounce
h_2=6 // m // height of second bounce
// Calculations
// From eq'n (5) we have, Coefficient of restitution between the glass and the floor is,
e=sqrt(h_2/h_1)
// From eq'n 3 we get height of drop as,
h=h_1/e^2 // m
// Results
clc
printf('The ball was dropped from a height of %f m \n',h)
printf('The coefficient of restitution between the glass and the floor is %f \n',e)
// Here we use h`=h_1 & h``=h_2 because h` & h`` could not be defined in Scilab.
