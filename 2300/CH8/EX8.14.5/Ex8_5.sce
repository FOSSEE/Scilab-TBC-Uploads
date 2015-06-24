
//scilab 5.4.1
//windows 7 operating system
//chapter 8:Junction Transistors:Biasing and Amplification
clc;
clear;
//given data
Rl=5*10^3;     //Load resistance in ohms
hie=1*10^3;     //h parameter of the transistor in terms of ohms
hre=5*10^-4;     //h parameter of the transistor
hfe=100;     //h parameter of the transistor
hoe=25*10^-6;      //h parameter of the transistor in terms of mho
Rg=1*10^3;      //source reistance in ohms

AI=(-hfe)/(1+(hoe*Rl));      //Current gain
disp(AI,'AI=');

Ri=hie+(AI*hre*Rl);     //input resistance in ohms
disp('ohms',Ri,'Ri=');

AVo=AI*Rl/(Rg+Ri);      //Overall voltage gain including source resistance 
disp(AVo,'AVo=');

APo=AVo*AI;     //Overall voltage gain including source resistance 
disp(APo,'APo=');
