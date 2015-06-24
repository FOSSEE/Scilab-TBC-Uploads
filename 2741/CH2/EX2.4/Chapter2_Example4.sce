clc
clear
//Input data
A=2*10^-6;//The cross section area of a uniform rod in m^2
t=20;//The change in temperature in degree centigrade 
y=10^11;//The youngs modulus of the rod in newtons/m^2
a=12*10^-6;//The coefficient of linear expansion of rod in per degree centigrade 

//Calculations
F=y*a*t*A;//The force required to prevent it from expanding in newtons
E=(1/2)*y*a*t*a*t;//The energy stored per unit volume in j/m^3

//Output
printf('The force required to prevent the rod from expanding is %3.0f newtons \n The Energy stored per unit volume is %3.0f j/m^3',F,E)
