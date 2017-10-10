clc;
//ex2.12
Vb=0.7; //volt
If=[0.001 0.005]; //Ampere
Rb=5; //ohm
Vf1=Vb+If(1,1)*Rb; //Volt//VF=VB+If*Rb;
Vf2=Vb+If(1,2)*Rb; //Volt//VF=VB+If*Rb;
disp('mV',Vf1,"Vf1=");
disp('mV',Vf2,"Vf2=");



