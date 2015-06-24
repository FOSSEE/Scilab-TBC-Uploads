//Example 5_27
clc;
clear;
close;
format('v',7);
//given data : 
I0=1.5;///micro A
T=300;//K
VF=150;//mV
kB=8.62*10^-5;//Boltzman Constant
VT=T/11600;//V(Volt equivalent of temperature)
rac=1/(I0*10^-6/kB/T*exp(VF/1000/VT));
disp(rac,"Ac resistance(ohm)")
//Answer and unit in the textbok is wrong.
