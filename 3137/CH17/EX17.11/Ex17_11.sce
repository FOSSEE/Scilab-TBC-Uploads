//Initilization of variables
d=0.6 //m
T_t=800 //N
T_s=180 //N
w=200 //rpm
//Calculations
r=d/2 //m radius
//Torque
M=(T_t-T_s)*r //N.m
//Power
w_new=(2*%pi*w)/60 //rad/s
Power=M*(w_new) //W
//Result
clc
printf('The power transmitted is %f W',Power)

