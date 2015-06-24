clc
clear
//Input data
x=0.3;//Thickness of brick wall in m
ti=24;//Inside surface temperature of wall in degree centigrade
to=-6;//Outside surface temperature of wall in degree centigrade
h=2.75;//Height of the wall in m
L=6.1;//Length of the wall in m
K=2.6;//Thermal conductivity of brick material in kJ/m hr C

//Calculations
T=ti-to;//Temperature difference across the wall in degree centigrade
A=h*L;//Area of the wall in m^2
Q=(K*A*T)/(x);//Heat transfer through conduction by the wall per hour in kJ/hr
R=T/Q;//Resistance of the wall in hr C/kJ
C=1/R;//Conductance of the wall in kJ/hr C

//Output
printf('(a)The heat transfer by conduction through the wall per hr Q = %3.1f kJ/hr \n (b)The resistance of the wall R = %3.4f hr C/kJ \n      The conductance of the wall C = %3.2f kJ/hr C ',Q,R,C)
