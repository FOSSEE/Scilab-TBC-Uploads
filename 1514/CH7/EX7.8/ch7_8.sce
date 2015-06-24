//chapter 7
//example 7.1
//page 196
clear;
clc ;
//given
Vce=5;//collector to emitter voltage in volts 
Ic=5;//collector current in microA
Rg=50;//total noise generating resistance in ohm
Ri=25;//i/p resistance in kohm
NF=1; //noise figure in dB
//noise factor
F=10^(NF/10);
Av=30;//gain
//rms noise voltage
K=1.37*10^-23;//boltzman's constant J/K
T=298;//absolute temperature in kelvin
B=9;//circuit bandwidth in Hz

en=sqrt(4*K*T*B*Rg*10^6)*10^6//in microV

//i/p noise
eni=en*Ri/(Ri+Rg)

//output noise
eno=round(Av*eni);

//total rms noise output voltage
Vn=sqrt(F*eno^2);

printf('total rms noise output voltage is %.1f microV',Vn);



