//Initilization of variables
I=100 //slug-ft^2
w=4 //rad/s
theta=6 //rad
Mc=64.4 //lb
g=32.2 //ft/s^2
//Calculations
vb=2*w //ft/s
vc=0.5*w //ft/s
Mb=(0.5*I*w^2+0.5*(Mc/g)*vc^2+0.5*Mc*theta)/(2*theta-(0.5*vb^2*(1/g))) //lb
//Result
clc
printf('The weight of the block B is %f lb',Mb)
