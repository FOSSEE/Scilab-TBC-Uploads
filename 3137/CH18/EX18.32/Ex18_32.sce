//Initilization of variables
mb=0.06 //kg
vb=500 //m/s
mblock=5 //kg
vblock=30 //m/s
//Calculations
//Applying conservation of momentum
v=(mb*vb+mblock*vblock)/(mb+mblock) //m/s
//Result
clc
printf('The speed of the system is %f m/s',v)
