//Example 8.6.8: resistance and capacitance
clc;
clear;
close;
//given data :
R1=3.1;// in kilo-ohm
C1=5.2;//in micro-ohm
R2=25;//in kilo-ohm
R4=100;//in kilo-ohm
f=2.5*10^3;//in Hz
w=2*%pi*f*10^-3;
R3=(R4/R2)*(R1+(1/(w^2*R1*C1^2)));
disp(R3,"resistance,R3(kilo-ohm) = ")
C3=((R4/R2)-(R1/R3))*C1;
disp(C3,"capacitance,C3(micro-farad) = ")
// answer is wrong in book
