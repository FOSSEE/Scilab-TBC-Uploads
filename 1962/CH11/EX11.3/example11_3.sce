
//example 11.3
//page 422
clc; funcprot(0);
//initialisation of variable
P1=10;
P2=30;
T1=110+460;
k=1.4;//const
W=10;
Cv=0.157;//heat const
T2=T1*(P2/P1)^((k-1)/k);
H=W*Cv*(T2-T1);
disp(H,"Change in Enthalpy(Btu)=");
clear
