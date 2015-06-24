
//scilab 5.4.1
//windows 7 operating system
//chapter 8:Junction Transistors:Biasing and Amplification
clc;
clear;
//given data
hoe=25*10^-6;       //h parameter in A/V
hie=4000;       //h paramater in ohms
hfe=135;        //h paramater of transistor
hre=7*10^-4;        //h paramater of transistor
Re=100;     //emitter resistance in ohms
Rl=3*10^3;      //Load resistance in ohms

//Here hoe*Rl is less than 0.1. So we can simplify the circuit and according to it the current gain is AI=Ic/Ib. here Ic=-hfe*Ib.

AI=-hfe;        //current gain
disp(AI,'AI=');

Ri=hie+(1+hfe)*Re;      //input resistance in ohms
disp('kilo ohms',Ri*10^-3,'Ri=');

AV=AI*Rl/Ri;        //voltage gain
disp(AV,'AV=');

disp("The output resistance of the transistor excluding RL is infinite.")
disp("kilo ohm",Rl/10^3,"The output resistance of the transistor including RL is =.")

