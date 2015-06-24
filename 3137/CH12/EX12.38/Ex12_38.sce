//Initiliztaion of variables
theta=30 //degrees
r=[100*tand(theta),100] //ft
v=17.6 //ft/s
//Calculations
v_1=100*secd(theta)*secd(theta) 
w=v/v_1 //rad/s (clockwise)
//result
clc
printf('The angular velocity is %frad/s',w)
