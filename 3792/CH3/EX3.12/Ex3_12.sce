// SAMPLE PROBLEM 3/12
clc;clear;funcprot(0);
// Given data
m=80;// kg
v=72;// km/h
s=75;// m
g=9.81;// The acceleration due to gravity in m/sec^2
mu_sa=0.30;// The coefficient of static friction 
mu_ka=0.28;// The coefficient of kinetic friction 
mu_sb=0.25;// The coefficient of static friction 
mu_kb=0.20;// The coefficient of kinetic friction 

// Calculation
// (a)
a_1=(v/3.6)^2/(2*s);// m/s^2
F=m*a_1;// The friction force on the block in N
U_12=F*s;// The work done in J
printf("\n(a)The work done by the friction force acting on the crate,U_12=%5.0f J (or) %2.0f kJ",U_12,U_12/1000);
// (b)
F_1=mu_sb*m*g;// N
F_2=mu_kb*m*g;// N
F=F_2;// N
a=F/m;// The acceleration in m/s^2
s=(a/a_1)*s;// The displacement of a crate in m
U_12=F*s;// The work done in J
printf("\n(b)The work done by the friction force acting on the crate,U_12=%4.0f J (or) %1.2f kJ",U_12,U_12/1000);
