//Example 5_30
clc;
clear;
close;
format('v',6);
//given data : 
t=125;//degree C
T=t+273;//K
Eta=1;//for Ge
VF=0.2;//V
VT=T/11600;//V(Volt equivalent of temperature)
I0=35;//micro A
//Part(a) Forward Direction
r=VT/(I0*10^-6)/exp(VF/VT);//ohm
disp(r,"(a) Dynamic Resistance in forward direcion(ohm) : ");
//Part(b) Reverse Direction
r=VT/(I0*10^-6)/exp(-VF/VT);//ohm
r=r/10^6;//Mohm
disp(r,"(b) Dynamic Resistance in reverse direcion(Mohm) : ");
///Answer in the textbook is not accurate.
