//Exa 2.9
clc;
clear;
close;
//Given data
format('v',10);
Ri=500;//in Ohm
RL=1;//in kOhm
hie=1;//in kOhm
hre=2*10^-4;//unitless
hfe=50;//unitless
hoe=25;//micro mho
//Part (a) :
Ai=-hfe/(1+hoe*10^-6*RL*10^3);//unitless
disp(Ai,"Current Gain : ");
//Part (b) :
Rin=hie*10^3-(hre*hfe/(hoe*10^-6+1/RL*10^3));//in Ohm
disp(Rin,"Input Resistance in Ohm :");
//Part (c) :
Av=Ai*RL*10^3/Ri;//unitless
disp(Av,"Voltage Gain : ");