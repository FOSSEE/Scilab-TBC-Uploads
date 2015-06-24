//Example 13.4 // capacitance and series resistance
clc;
clear;
close;
//given data :
M=18.35; // in m-H
R1=200; // in ohm
L1=40.6; // in m-H
R2_1=119.5; // in ohm
R4=100; // in ohm
C2=((M*10^-3)/(R1*R4))*10^6;
R2=(R4*(L1-M))/M;
Rs=R2-R2_1;
disp(C2,"capacitance,C(micro-farad) = ")
disp(Rs,"the series resistance,Rs(ohm) = ")
