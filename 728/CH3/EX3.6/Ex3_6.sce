//Caption:Determine point of attachment & length of stub.
//Exa 3.6
clc;
clear;
close;
Z_l=100;//in ohms
Z_o=600;//in ohms
f=100*10^6;//in Hz
wl=(3*10^8)/f;
//Position of stub is :
m=((Z_l*Z_o)/(Z_l-Z_o))^0.5;
pos={wl/(2*%pi)}*atan((Z_l/Z_o)^0.5);//in meters
l={wl/(2*%pi)}*{atan(m)};//in meters 
disp(pos,"Position of stub (in meters) =");
disp(abs(l),"Length of stub (in meters) =");