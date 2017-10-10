// SAMPLE PROBLEM 3/17
clc;clear;funcprot(0);
// Given data
m=10;// kg
k=60;// N/m
F=250;// N
theta=30;// degree
ABbar=1.5;// m
BCbar=0.9;// m
g=9.81;// The acceleration due to gravity in m/sec^2
d_AC=1.2;// The distance in m
d_BC=0.9;// The distance in m

// Calculation
s=ABbar-BCbar;// m
U_ac=F*s;// J
V_Ag=0;// The initial gravitational potential energy in J
T_A=(1/2)*m*V_Ag^2;// N.m
V_Cg=m*g*(d_AC*sind(theta));// The final gravitational potential energy in J
x_A=s;// m
x_B=s+d_AC;// m
V_Ae=(1/2)*k*(x_A)^2;// The initial elastic potential energy in J
V_Ce=(1/2)*k*(x_B)^2;// The final elastic potential energy in J
// Substitution into the alternative work-energy equation 3/21a gives
v_c=sqrt((((T_A+V_Ag+V_Ae+U_ac)-(V_Cg+V_Ce))*2)/m);// m/s
printf("\nThe velocity of the slider as it passes point C,v_C=%0.3f m/s",v_c);
