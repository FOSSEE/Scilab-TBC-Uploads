// Example 6.11;// feedback factor and Change in gain
clc;
clear;
close;
Zi=1;//input impedance without feedback in kiilo ohms
Zo=10;//output impedance without feedback in kiilo ohms
Zof=1;//output impedance with feedback in killo ohms
A= 1000;// open loop voltage gain
Beta=( (Zo/Zof)-1)/A;// feedback ratio
BetaA= Beta*A;//feedback factor
A1= (1-0.1)*A;//new open loop voltage gain
Af=100;//FEEDBACK
Af1= (A1/(1+(Beta*A1)));//GAIN WITH FEEDBACL
dA=((Af-Af1)/Af)*100;// Change in overall gain in percentage 
disp(BetaA,"feedback factor is")
disp(dA,"Change in overall gain in percentage is")
