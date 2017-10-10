// Example 5_7
clc;clear;funcprot(0);
// Given values
P_atm=101.3;// The atmospheric pressure in kPa;
rho=750;//The density of gasoline in kg/m^3
g=9.81;//m/s^2
z_1=0.75;//  m
z_3=2.75;// m
D=(5/1000);// m

// Calculation
//(a)
V_2=sqrt(2*g*z_1);
A=(%pi*D^2)/4;//The cross-sectional area of the tube in m^2
v=V_2*A*1000;//The flow rate of gasoline in  L/s
V=4;// Volume of gasoline in litre
gradt=V/v;
printf('(a)The time needed to siphon 4 L of gasoline from the tank,gradt=%0.1f s\n',gradt);
//(b)
P_3=P_atm-((rho*g*z_3)/1000);// kPa
printf('(b)The pressure at point 3,P_3=%0.1f kPa\n',P_3);
