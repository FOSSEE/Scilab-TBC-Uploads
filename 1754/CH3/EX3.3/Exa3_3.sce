//Exa 3.3
clc;
clear;
close;
//Given data : 
InputVoltage=1;//in mV
RL=5.6;//in kohm
RS=600;//in ohm
hre=6.5*10^-4;//unitless
hie=1.7;//in kOhm
hfe=125;//unitless
hoe=80;//in uA/V
deltah=hoe*10^-6*hie*10^3-hfe*hre;
Zie=(hie*10^3+RL*10^3*deltah)/(1+hoe*10^-6*RL*10^3);//in Ohm
Zoe=(hie*10^3+RS)/(hoe*10^-6*RS+deltah);//in Ohm
Ave=-(hfe*RL*10^3)/(hie*10^3+RL*10^3*deltah);//unitless
Avs_e=Ave*Zie/(Zie+RS);//
OutputVoltage=Avs_e*InputVoltage;//in 
disp(Zie/1000,"Input impedence in kohm :");
disp(Zoe/10^3,"Output impedence in kohm :");
disp(Ave,"Voltage gain : ");
disp(Avs_e,"Voltage gain with source resistance : ");
disp(OutputVoltage,"Output Voltage in mV : ");
//Note : Ans of output impedence is wrong in the book.