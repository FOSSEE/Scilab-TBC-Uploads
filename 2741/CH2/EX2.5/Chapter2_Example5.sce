clc
clear
//Input data
d=10^-3;//The diameter of a steel wire in m
t=20;//The difference in the temperature in degree centigrade 
y=2*10^11;//The youngs modulus of a steel wire in newtons/m^2
a=12*10^-6;//The coefficient of linear expansion of steel wire in per degree centigrade
pi=(22/7);//Mathematical constant value

//calculations
A=(pi*d^2)/4;//The cross sectional area of the steel wire in m^2
F=(y*a*t*A)/(9.8);//Force required to maintain the original length in kg wt

//output
printf('Force required to maintain the original length is %3.3f kg wt ',F)
