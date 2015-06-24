// Exa 2.26
clc;
clear;
close;
// Given data
R1 = 1.1;// in K ohm
R2 = 2.2;// in K ohm
Vi= 170;// in V
V_o = (Vi*R1)/(R1+R2);// in V
disp(V_o,"The output voltage in V is");
V_dc = (2*V_o)/%pi;// in V
disp(V_dc,"The dc voltage in V is");
