
//example 11.2
//page 420
clc; funcprot(0);
//initialisation of variable
T1=15+273;//temperature
T2=90+273;//temperature
P1=40+101.3;//pressure
P2=360+101.3;//pressure
Cv=0.171;//heat constant
k=1.4;
W=10;
H=W*0.171*log((T2/T1)^1.4*(P2/P1)^-0.4);
disp(H,"Change in Enthalpy(kcal)=");
clear
