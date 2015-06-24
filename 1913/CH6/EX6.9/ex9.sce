clc
clear
//Input data
D=0.07;//Diameter of the steel tube in m
L=3;//Length of the steel tube
t1=227;//Temperature of the steel tube in m
t2=27;//Temperature of the room in degree centigrade
s=20.52*10^-8;//Stefan Boltzmann constant in kJ/hr m^2 T^4
pi=3.1428;//Constant value of pi

//Calculations 
A=2*pi*D*L;//Surface area of the tube in m^2
Q=(A)*(s)*((t1+273)^4-(t2+273)^4);//Loss of heat by radiation in kJ/hr
Q1=Q/3600;//Loss of heat by radiation in kW

//Output
printf('The loss of heat by radiation from steel tube Q = %3.4f kW ',Q1)
