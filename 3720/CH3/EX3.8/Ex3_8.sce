// Example 3_8
clc;clear;funcprot(0);
// Properties
rho=1000;// The density of lake water through out
g=9.81;//The acceleration due to gravity in m/s^2

// Given values
s=8;// m
b=1.2;//m
h_c=s+b/2; // m

// Calculation
P_ave=(rho*g*h_c)/1000;// kN/m^2
printf('The average pressure on the door,P_ave=%0.1f kN/m^2\n',P_ave);
A=1*1.2;// m^2
F_r=P_ave*A;// kN
printf('The resultant hydrostatic force on the door,F_r=%0.1f kN\n',F_r);
y_p=s+b/2+((b^2)/(12*(s+b/2)));// m
printf('The pressure center,y_p=%0.2f m\n',y_p);
// The answer vary due to round off error
