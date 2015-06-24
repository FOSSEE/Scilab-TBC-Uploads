//Initilization of variables
d=760 //mm
W=500 //N
a=0.305 //mm coefficient of rolling resisatnce
r=d/2 //mm
//Calculations
P=(W*a)/r //N
//Result
clc
printf('The force necessary is P=%fN',P)
