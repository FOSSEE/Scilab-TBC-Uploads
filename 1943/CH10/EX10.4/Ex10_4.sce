
clc
clear
//Input data
Cv=0.97//Coefficient of velocity
f=0.45//Friction coefficient
h=0.85//Head in m
d=1000//Density in kg/m^3
n=1//For a single jet turbine

//Calculations
Ns=((60/3.14)*(f*sqrt(2*9.8))*sqrt(n*(3.14/4)*Cv*sqrt(2*9.8)*9.8*h))//Specific speed in terms of d/D 

//Output
printf('The specific speed of a single jet Pelton wheel is about %3.0f (d/D) where d and D represent the jet and bucket wheel diameters respectively',Ns)
