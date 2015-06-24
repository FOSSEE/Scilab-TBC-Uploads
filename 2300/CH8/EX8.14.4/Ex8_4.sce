
//scilab 5.4.1
//windows 7 operating system
//chapter 8:Junction Transistors:Biasing and Amplification
clc;
clear;
//given data
Rg=1*10^3;      //internal resistance in ohms
Rl=20*10^3;     //Load resistance in ohms
hie=1*10^3;     //h parameter of the transistor in terms of ohms
hre=2.5*10^-4;     //h parameter of the transistor
hfe=150;     //h parameter of the transistor
hoe=1/(40*10^3);      //h parameter of the transistor in terms of mho

AI=(-hfe)/(1+(hoe*Rl));      //Current gain
disp(AI,'AI=');

Ri=hie+(AI*hre*Rl);     //input resistance in ohms
disp('ohms',Ri,'Ri=');
Ro=(Rg+hie)/((Rg*hoe)+(hie*hoe)-(hfe*hre));     //output resistance in ohms
disp('kilo ohms',Ro*10^-3,'Ro=');
