
clc 
//initialisation of variables
w= 4 //ft
l= 4 //ft
X= 10 //ft
a = 45 //degrees
W= 62.4 //lbs/ft^3
u= 0.25
//CALCULATIONS
A= w*l
X1= X+(w/2)*sind(a)
P= W*A*X1
T= u*P
//RESULTS
printf ('magnitude of the lifting force= %.f lbs ',T) 
