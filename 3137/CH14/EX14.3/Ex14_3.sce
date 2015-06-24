//Initilization of variables
s_BC=2 //m
s_C=2.5 //m
//Calculations
s_B=sqrt(s_BC^2+s_C^2) //m
theta=atand(s_BC/s_C) //degrees
//Result
clc
printf('The absolute displacement is %fm and the angle made by the vector is %fdegrees',s_B,theta) 
