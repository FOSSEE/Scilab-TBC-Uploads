//Example 14_6
clc;clear;
// Properties
//For refrigerant R-134a at T=20°C
v_f=0.0008157; // m^3/kg
rho=1/v_f; // kg/m^3
// Given values
r_1=0.100;
r_2=0.180;// The impeller inlet and outlet radii in m
b_1=0.050;
b_2=0.030;//The impeller inlet and outlet widths in m
v=0.25;// m^3/s
H=14.5; // Net head in m
n=1720;// rpm
g=9.81; // m/s^2

// Calculation
W_whp=rho*g*v*H;// The required water horsepower in W
// We assume 100 percent efficiency such that bhp is approximately equal to W_whp
bhp=W_whp/745.7;//The required brake horsepower in hp
printf('The required brake horsepower,bhp=%0.0f hp\n',bhp);
omega=(2*%pi*n)/60;
beta_1=atand(v/(2*%pi*b_1*omega*r_1^2));
printf('The blade inlet angle ,beta_1=%0.0f degree\n',beta_1);
V_2t=(g*H)/(omega*r_2);
V_2n=(v)/(2*%pi*r_2*b_2);
beta_2=atand(V_2n/((omega*r_2)-V_2t));
printf('The trailing edge blade angle ,beta_2=%0.0f degree\n',beta_2);
