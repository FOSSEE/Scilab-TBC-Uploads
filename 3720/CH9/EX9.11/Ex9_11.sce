//Example 9_11
clc;clear;funcprot(0);
// Given values
V=1.0;//  Uniform velocity in m/s
w=2.0;// Width in m
psi_w=0; // m^2/s
psi_d=1.0;// m^2/s

// Calculation
V_1=psi_d-psi_w; // The volume flow rate per unit width (V/w)in m^3/s
v=V_1*w;// m^3/s
printf('The total volume flow rate through the slot,v =%0.1f m^3/s\n',v);
delta=0.21;// m
psi_a=1.6;// m^2/s
psi_b=1.8;// m^2/s
V_2=psi_b-psi_a;
V_a=(1/delta)*V_2;
printf('The speed at point A,V_a =%0.2f m/s\n',V_a);
