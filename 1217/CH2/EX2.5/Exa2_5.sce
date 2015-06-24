//Exa 2.5
clc;
clear;
close;
//given data
Vo=10;//in Volt
SR=1;//in V/uSec
dV=(0.9-0.1)*Vo
dt=dV/SR;//in uSec
disp(dt,"Rise time in uSec is : ")