//Exa 3.12
clc;
clear;
close;
format('v',5);

//Given Data :
T1=24+273;//K
T2=10+273;//K
Q1=1500;//kJ/min
Q1=Q1/60;//kW
COP_ideal=T1/(T1-T2);
ActualCOP=COP_ideal*30/100;
W=Q1/ActualCOP;//kW
disp(W,"Power required in kW : ");
//Answer is wromg in the book as calculation for Q1 is wrong.
