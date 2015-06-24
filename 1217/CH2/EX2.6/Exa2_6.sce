//Exa 2.6
clc;
clear;
close;
//given data
V1=-5;//in Volt
V2=5;//in Volt
SR=0.5;//in V/uSec
dV=V2-V1;// in Volt
dt=dV/SR;//in uSec
disp(dt,"Rise time in uSec is : ");