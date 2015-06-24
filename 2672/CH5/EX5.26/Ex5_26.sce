//Example 5_26
clc;
clear;
close;
format('v',6);
//given data : 
I0=80;///micro A
t=125;//degree C
T=t+273;//K
Eta=1;//for Ge
VF=0.2;//V
VT=T/11600;//V(Volt equivalent of temperature)
///Part(a) In forward direction
Rac=VT/(I0*10^-6)*exp(-VF/Eta/VT);//ohm
disp(Rac,"(a) Dynamic Resistance in forward diection(ohm) :  ");
///Part(b) In reverse direction
format('v',8);
Rac=VT/(I0*10^-6)*exp(VF/Eta/VT)/10^6;//Mohm
disp(Rac,"(b) Dynamic Resistance in reverse diection(Mohm) :  ");
//Answer in the textbook is not accurate.
