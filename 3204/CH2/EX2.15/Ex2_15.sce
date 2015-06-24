//Initilization of variables
d=0.6 //m //diameter of the wheel
r=0.3 //m //radius of the wheel
W=1000 //N //weight of the wheel
h=0.15 //m //height of rectangular block
//Calculations
theta=atand((sqrt(h))/(sqrt(d-h)))
P=(W*tand(theta)) //N // dividing eq'n 1 & 2
//Resuts
clc
printf('The force P so that the wheel is just to roll over the block is %f N \n',P)
