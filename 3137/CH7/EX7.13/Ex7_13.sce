//Initilization of variables
m=0.6 //kg/m
l=240 //m
d=24 //m
//Calculations
c=((((1/4)*(l^2))-(24*24)))/(2*d)
T_max=9.8*m*(c+d) //N
a=asinh((l)/(2*c))*576
//Result
clc
printf('The maximun tension is %fN and a=%fm',T_max,a)
