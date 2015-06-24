//Example 5_25
clc;
clear;
close;
format('v',7);
//given data : 
I0=20;///micro A
VF=0.2;//V
t=27;//degree C
T=t+273;//K
VT=T/11600;//V(Thermal voltage)
Eta=1;//for Ge
I=I0*10^-6*[exp(VF/Eta/VT)-1]*1000;//mA
rdc=VT/(I0*10^-6)*exp(VF/Eta/VT)/10^6;//Mohm
disp(rdc,"Static Resistance(Mohm) : ");
//Note : Answer & Solution in the textbook is wrong as they calculated rdc for the values given in next example.
//I0 taken 80micro A instead 20 micro A & VT taken for 125 degree C instead 25 degree C.
