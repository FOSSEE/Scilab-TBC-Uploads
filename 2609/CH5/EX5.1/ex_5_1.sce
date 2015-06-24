//Ex 5.1
clc;
clear;
close;
format('v',5);
V1=2;V2=3;V3=4;V4=5;//V
R1=10;R2=15;R3=22;R4=50;//kohm
Rf=10;//kohm
Vout=-Rf/R1*V1-Rf/R2*V2-Rf/R3*V3-Rf/R4*V4;//V
disp(Vout,"Output voltage of the circuit(V)");;
