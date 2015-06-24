// Exa 5.3
format('v',7);clc;clear;close;
// Given data
// Values of resistances of the circuit
R1 = 7;// in k ohm
R2 = 2;// in k ohm
R3 = 4;// in k ohm
R4 = 20;// in k ohm
Rg = 300;// in ohm
E = 8;// in V
//Use Thevenin's equivalent for Ig,  V_TH=V_BD=V_AD-V_AB=( ((E/(R3+R4))*R4) - ((E/(R1+R2))*R1) );
V_TH = ( ((E/(R3+R4))*R4) - ((E/(R1+R2))*R1) );// in V
Req = ((R1*R2)/(R1+R2)) + ((R3*R4)/(R3+R4));// in k ohm
// Current through galvanometer 
Ig = V_TH/((Req*10^3)+Rg);// in A
Ig = Ig * 10^6;// in µA
disp(Ig,"The current through galvanometer in µA is");
