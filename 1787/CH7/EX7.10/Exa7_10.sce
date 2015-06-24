//Exa 7.10
clc;
clear;
close;
//given data :
ID_on=5;//in mA
VGS=6;//in Volt
VGS_on=8;//in Volt
VGST=4;//in Volt
K=ID_on/(VGS_on-VGST)^2;//in mA/V^2
ID=K*(VGS-VGST)^2;//in mA
disp(ID,"When VGS=6V the drain current in mA : ");