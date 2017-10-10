clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
m=9.1*10^-31 //mass in kg
e=1.6*10^-19 //charge in C
V_0=844 //voltage in V
n=1 //first order reflection
tetha=58 //Braggs angle in degree 

//calculation
lambda=(h/sqrt(2*m*e*V_0))
d=((n*lambda)/(2*sind(tetha)))
mprintf("The interplanar spacing is = %1.2e m or 0.249e-10 m",d)
//The answer varies due to round off error.
