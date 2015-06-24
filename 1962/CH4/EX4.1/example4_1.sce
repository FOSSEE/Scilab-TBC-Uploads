
//example 4.1
//page 160
clc; funcprot(0);
// Initialization of Variable
Q=0.1;
A2=19.63/10000;
A1=78.54/10000;
z1=6;
z2=0;
g=9.81
Gamma=9810;//specific weight
V1=Q/A1;
V2=Q/A2;
Pdef=Gamma*(V2^2/2/g+z2-z1-V1^2/2/g);
disp(Pdef/1000,"pressure difference between 1 and 2 (kN/m^2)");
clear
