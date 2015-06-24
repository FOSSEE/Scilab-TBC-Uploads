//Exa4.13
clc;
clear;
close;
//given data
Vz=8;//in volts
VS=12;//in volts
Vout=8;//in volts
RL=10;//in Kohm
Rs=5;//in Kohm
//part (a)
disp("Output voltage will be equal to Vz i.e "+string(Vz)+" Volts");
//part (b)
Vrs=VS-Vout;//in volts
disp(Vrs,"Voltage across Rs in volts : ");
IL=Vout/RL;//in mAmpere
Is=(VS-Vout)/Rs;//in mAmpere
Iz=Is-IL;//in mAmpere
disp(Iz,"Current through zener diode in mA : ");