//example 2.3
//page 53
clc; funcprot(0);
//initialisation of variable
Gamma=9.81;
S=0.85;//specific gravity
P1=150;
h1=0.8;//height
h2=2;
P2=P1+Gamma*S*h1;
P3=P2+Gamma*h2;
disp(P3,"pressure at the bottom (kN/m^2)");
clear
