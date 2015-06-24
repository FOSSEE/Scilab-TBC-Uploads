//Initilization of variables
l=2.5 //m
v_A=4 //m/s
a_A=5 //m/s^2
theta=30 //degrees
//Calculations
//Vector triangle yields v_a.b=2.93 m/s
v_ab=2.93 //m/s
w=v_ab/l //rad/s (clockwise)
//Ploygon yields alpha_a/b=2.75 m/s^2
alpha_ab=2.75 //m/s^2
alpha=alpha_ab/l //rad/s^2 (counterclockwise)
//Result
clc
printf('The value of angular velocity is %frad/s and  that of angular acceleration is %frad/s^2',w,alpha)
