
//scilab 5.4.1
//windows 7 operating system
//chapter 8:Junction Transistors:Biasing and Amplification
clc;
clear;
//given data
b=99;
Vbe=0.7;    //Volatge between base and emitter in V
Vcc=12;     //Volatge source applied at collector in V4
Rl=2*10^3;      //load resistance in ohms
Rb=100*10^3;       //Resistance at base in ohms
Ib=(12-0.7)/((100*Rl)+Rb);        //Base current in micro Ampere
format("v",7)
disp('mA',Ib*10^3,'Ib=');

Ic=b*Ib;
format("v",7)
disp('mA',Ic*10^3,'Ic=');
Vce=4.47;       //Voltage between collector and emitter in V

S=(b+1)/(1+b*Rl/(Rl+Rb));       //stabilty factor 1
disp(S,'S=');
S1=b/(Rb+Rl*(1+b));      //stabilty factor 2 in A/V
disp('A/V',S1,'S1=');
S2=(Vcc-Vbe-(Ic*Rl))/(Rb+Rl*(1+b));        //stability factor 3 in A
disp('A',S2,'S2=');

