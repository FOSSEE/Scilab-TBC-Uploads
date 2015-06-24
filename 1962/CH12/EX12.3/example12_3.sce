
//example 12.3
//page 450
clc; funcprot(0);
//initialisation of variable
Q1=82;//flow rate
Q2=100;//flow rate
H1=17.5;//head of water
H2=20;//head of water
d1=36;//diameter
N1=1500;//rpm
k1=Q2/Q1*N1*d1^3;//k1=N2*d2^3;
k2=H2/H1*N1^2*d1^2//k2=N2^2*d2^2;
d2=(k1^2/k2)^(1/4);
disp(d2,"diameter (cm)");
N2=k1/d1^3;
disp(N2,"rpm");
clear
