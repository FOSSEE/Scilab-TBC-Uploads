//Initilization of variables
W=1000 //lb
w_w=200 //lb weight of the individual wheel
d_w=2.5 //ft diameter of the wheel
v=22 //ft/s
t=2 //minutes
//Calculations
//T1=Initial Kinetic Energy and T2=Final Kinetic Energy
F=(-0.5*W*32.2^-1*v^2-4*0.5*w_w*32.2^-1*(v^2+0.5*v^2))/(10560) //lb
//Negative sign in the answer tells it oposses the motion 
//Result
clc
printf('The rolling resistance is %flb',F) 
