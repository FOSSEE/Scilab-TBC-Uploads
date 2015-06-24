//Exa 3.2
clc;
clear;
close;
//Given data
RL=10;//in kohm
RS=1;//in kohm
hie=1.1;//in kOhm
hre=2.5*10^-4;//unitless
hfe=50;//unitless
hoe=25;//in u mho
Aie=-hfe/(1+hoe*10^-6*RL*10^3);//unitless
Zie=hie+hre*Aie*RL;//in kOhm
Zie=round(Zie);
Ave=Aie*RL/Zie;//unitless
Avs_e=Ave*Zie/(Zie+RS);//
deltah=hoe*10^-6*hie*10^3-hfe*hre;
Zoe=(hie*10^3+RS*10^3)/(hoe*10^-6*RS*10^3+deltah);
Ais_e=Aie*RS/(Zie+RS);
Ape=Ave*Aie;
Aps_e=Avs_e*Ais_e;
disp(Aie,"Current gain : ");
disp(Ais_e,"Current gain with source resistance : ");
disp(Ave,"Voltage gain : ");
disp(Avs_e,"Voltage gain with source resistance : ");
disp(Ape,"Power gain : ");
disp(Aps_e,"Power gain with source resistance : ");
disp(Zie,"Input impedence in kohm :");
disp(Zoe/10^3,"Output impedence in kohm :");