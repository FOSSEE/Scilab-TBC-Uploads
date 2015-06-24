//Exa 1.9
clc;
clear;
close;
//Given data
R=5;//in kOhm
R=R*1000;//in Ohm
RL=10;//in kOhm
RL=RL*1000;//in Ohm
Vin=120;//in Volt
VZ=50;//in Volt
//Part (i)
Vo=VZ;//in Volt
disp(Vo,"Output voltage in volt : ");
//Part (ii)
VR=Vin-VZ;//in Volt
disp(VR,"Voltage drop across series resistance in volt :");
//Part (iii)
IL=Vo/RL;//in Ampere
disp(IL*1000,"Load Current in mA :");
I=VR/R;//in Ampere
disp(I*1000,"Current through resistance R in mA :");
IZ=I-IL;//in Ampere
disp(IZ*1000,"Load Current in mA :");