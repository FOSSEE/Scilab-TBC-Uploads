clc;clear;
//Example 3.10

//constants used
R=0.287// in kPa m^3/kg K

//given values
l=4;
b=5;
h=6;
P=100;
T=25+273;//in Kelvin

//calculation
V=l*b*h;
m=P*V/R/T;
disp(m,'the mass of the air in kg')
