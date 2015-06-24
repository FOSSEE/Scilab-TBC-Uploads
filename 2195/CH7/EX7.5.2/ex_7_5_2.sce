//Example 7.5.2: current
clc;
clear;
close;
//given data :
R1=1.5;// in kilo-ohm
R2=3;// in kilo-ohm
R3=5; // in kilo-ohm
R4=14;//in kilo-ohm
Rg=250;//in ohm
E=10;//in V
Vd=(E*R4)/(R2+R4);
Vc=(E*R3)/(R1+R3);
E_th=E*((R4/(R2+R4))-(R3/(R1+R3)));
R_th=((R1*R3)/(R1+R3))+((R2*R4)/(R2+R4));
Ig=(E_th/((R_th*10^3)+Rg))*10^6;
disp(Ig,"current,Ig(micro-A) = ")
// answer is wrong in book
