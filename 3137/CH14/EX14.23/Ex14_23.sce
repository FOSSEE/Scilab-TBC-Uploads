//Initilization of variables
//Speed and acceleration at the center
v=12 //in/s
a=18 //in/s^2
//Calculations
v_D=((a+v*0.5)/a)*v //in/s
//Speed at point F
v_F=((v/2)/v)*v_D //in/s
//Acceleration at D
a_D=(24/a)*a //in/s^2
//Acceleration at F
a_F=((v/2)/v)*24 //in/s^2
//Result
clc
printf('The velocity and acceleration of weight A are %iin/s and %iin/s^2 respectively',v_F,a_F)
