
//example 9.12
//page 340
clc; funcprot(0);
//initialisation of variable
L1=5000;
D1=1.5;
EL1=135;//energy level 1
L2=800;
D2=0.5;
EL2=120;
EL3=112;
L3=1500;
D3=0.75;
//using iteration junction height=131.6;

Q1=sqroot((EL1-131.6)/0.7594);
disp(Q1,"flow in pipe 1(m^3/s)");
Q2=sqroot((131.6-EL2)/36.33);
disp(Q2,"flow in pipe 2(m^3/s)");
Q3=sqroot((131.6-EL3)/8.168);
disp(Q3,"flow in pipe 3(m^3/s)");
clear
