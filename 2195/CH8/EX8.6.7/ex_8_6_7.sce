//Example 8.6.7: resistance and capacitance
clc;
clear;
close;
//given data :
format('v',8)
C2=106*10^-12;// in farad
C4=0.6*10^-6;// in farad
R4=1000/%pi;// in ohm
R3=250;// in ohm
R1=(C4/C2)*R3*10^-6;
disp(R1*10^6,"resistance,R1(ohm) = ")
C1=(R4/R3)*C2*10^6;
disp(round(C1*10^6),"capacitance,C1(micro-farad) = ")

