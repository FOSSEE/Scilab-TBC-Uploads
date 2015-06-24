//Example 4.13: 
clc;
clear;
close;
//given data :
format('v',5)
I=1;
hfe=46;
hoe=80*10^-6;// in mho
hre=5.4*10^-4;
hie=800;// in ohm
RL=5*10^3;// in ohm
Aie=hfe/(I+(hoe*RL));
Zie=hie-(hre*RL*Aie);
Ave=(Aie*RL)/Zie;
Rg=500;// in ohm
Zoe=((hie+Rg)/(hoe*(hie+Rg)-(hfe*hre)))/10^3;
Ape=Aie*Ave;
disp(Aie,"Current gain,Aie = ")
format('v',6)
disp(Zie,"Input resistance,Zie(ohm) = ")
disp(Ave,"Voltage gain,Ave = ")
format('v',5)
disp(Zoe,"Output resistance,Zoe(k-ohm) = ")
format('v',7)
disp(Ape,"Power gain,Ape = ")
//voltage gain and power gain are calculated wrong in the textbook
