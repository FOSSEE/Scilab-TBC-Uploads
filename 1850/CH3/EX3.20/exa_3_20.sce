// Exa 3.20
clc;
clear;
close;
// Given data
v_in= 100;// in mili volt
v_in=v_in*10^-3;// in volt
v_out= 4.25;// in volt
// Taking
R1=100;// in ohm
// Formula v_out = (1+2*R_f/R1)*v_in
R_f= R1/2*(v_out/v_in-1);// in ohm
R_f=R_f*10^-3;// in k ohm
disp(R_f,"Gain of the circuit in k ohm");
disp("Use 2.2 k ohm standard value");
