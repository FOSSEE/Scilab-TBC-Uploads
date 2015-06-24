//Example 3.18:Resistance 
clc;
clear;
close;
//given data :
R2=100;// in ohm
R3=32.7;// in ohm
R4=100;// in ohm
R=1.36;// in ohm
L=47.8;// in mH
R1=(R2*R3/R4)-R;
disp(R1,"Resistance,R1(ohm) = ")
L1=(R2/R4)*L;
disp(L1,"inductance,L1(mH) = ")
