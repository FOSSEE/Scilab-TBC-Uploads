//Initilization of variables
l=6 //ft
k=20 //lb/in
x=8 //in
//Calculations
//Work Done by Gravity
Wg=(l*12+x) //in without W
//Work Done by Spring
Ws=0.5*k*x^2 //in-lb
//Change in the kinetic energy is zero
W=Ws/Wg //lb
//Result
clc
printf('The weight is %i lb',W) 
