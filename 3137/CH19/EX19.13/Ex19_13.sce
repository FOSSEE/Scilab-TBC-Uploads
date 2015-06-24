//Initilization of variables
m=120 //kg
k=0.3 //m
ls=0.6 //m
ds=0.05 //m
G=80*10^9 //Pa
//Calculations
//Polar Moment of Inertia
J1=m*k^2 //kg.m^2
J2=J1 //kg.m^2
J=(1/32)*%pi*(ds^4) //m^4
//Frequency
f=(1/(2*%pi))*(sqrt((J*G*(J1+J2))/(ls*J1*J2))) //Hz
//Result
clc
printf('The natural frequency of the torsional oscillation is %f Hz',f)
