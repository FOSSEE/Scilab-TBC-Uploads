//Initilization of variables
f_r=1 //in/s rate of fall of mercury
ll=18 //in length of left column
lr=22 //in length of right column
rho=850 //lb/ft^3
d=1/4 //in
g=32.2 //ft/s^2
//Calculations
//Applying Impulse momentum theorem
M=((d*%pi*d^2*4)/12^3)*(rho/g)*(1/12) //lb-s
//Result
clc
printf('The upward momentum of mercury is %f lb-s',M)
