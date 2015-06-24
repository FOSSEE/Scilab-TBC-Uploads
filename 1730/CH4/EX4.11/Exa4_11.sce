//Exa 4.11
clc;
clear;
close;
//given data :
ID_on=5;//in mAmpere
VGS_on=8;//in Volt
VGS=6;//in Volt
VGST=4;//in Volt
k=ID_on/(VGS_on-VGST)^2;//in mA/V^2
ID=k*(VGS-VGST)^2;//in mA
disp(ID,"Drain current in mA : ");