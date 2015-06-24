//Initilization of variables
m=2000 //kg
mf=8500 //kg
vr=2000 //m/s
a=9.8 //m/s^2
//Calculations
//Applying Newtons Second Law
dm_dt=-(-((m+mf)*a)-(m+mf)*a)/(-vr) //kg/s
//Result
clc
printf('dm/dt=%f kg/s',dm_dt)
//The negative sign indicates the loss in the mass of the system
