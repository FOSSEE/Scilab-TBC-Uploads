clc 
//initialisation of variables
d= 4 //in
v= 30 //ft/sec
a= 22.5 //degrees
w= 62.4 //lbs/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS 
P= w*(%pi*(d/12)^2/4)*v^2*sqrt(2*(1-cosd(a)))/g
//RESULTS
printf ('Resultant force tending to move the pipe= %.f lbs',P)


//ANSWER GIVEN IN THE TEXTBOOK IS WRONG
