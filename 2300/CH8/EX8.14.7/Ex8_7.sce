
//scilab 5.4.1
//windows 7 operating system
//chapter 8:Junction Transistors:Biasing and Amplification
clc;
clear;
//given data

hfe=100;        //h parameter of transistor
hie=560;        //h parameter of transistor in ohms
Rc=2*10^3;      //collector resistance in ohms
Re=10^3;        //emitter resistance in ohms
Rb=600*10^3;        //Base resistance in ohms

//Since hoe is neglected we can use the simplified equivalent circuit hence the Ri is

Ri=hie+(1+hfe)*Re;      //Input resistance in ohms
disp('kilo ohms',Ri*10^-3,'Ri=');

Rib=(Ri*Rb)/(Ri+Rb);        //Input resistance including Rb in ohms
disp('kilo ohms',Rib*10^-3,'Input resistance (including Rb)=');

disp("The output resistance excluding load is infinita")
Ro=Rc;
disp("kilo ohms",Ro*10^-3,"Output resistance including load =")

AV=-(hfe*Ro)/(hie+((1+hfe)*Re));        //voltage gain
disp(AV,'AV=');
disp("Small signals are used,since otherwise the output waveform will be distorted.Also,the equivalent circuit will not hold.")

//Taking DC emitter current and collector current nearly equal

Ib=20/(Rb+Re*101);      //base current in mA
disp('mA',Ib*10^3,'Ib=');

disp("The Q-point is defined by")
Ic=hfe*Ib;      //collector current in mA
disp('mA',Ic*10^3,'Ic=');

VCE=20-(3*Ic*10^3)
disp('V',VCE,'VCE=');
