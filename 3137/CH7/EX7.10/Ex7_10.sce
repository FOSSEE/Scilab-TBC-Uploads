//Initilization of variables
T=140000 //N
w=2000 //N/m
a=20 //m
//Calculations
//Calculation step by step
lhs=(140000*2)/(2000*20) 
d=sqrt(1/((((lhs^2)-1)*16)/(20^2))) //m
l=a(1+(8/3)*(d/a)^2) //m
//Result
clc
printf('The sag in the cable is %fm and the required length is %fm',d,l)
