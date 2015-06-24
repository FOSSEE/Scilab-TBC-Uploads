// Example 6.5;// Change in gain
clc;
clear;
close;
A= 1000;// open loop voltage gain
Beta= 0.002;// feedback ratio
Af= (A/(1+(Beta*A)));//GAIN WITH FEEDBACL
A1= (1-0.15)*A;//new open loop voltage gain
Af1= (A1/(1+(Beta*A1)));//GAIN WITH FEEDBACL
dA=((Af-Af1)/Af)*100;// Change in overall gain in percentage 
disp(dA,"Change in overall gain in percentage is")
