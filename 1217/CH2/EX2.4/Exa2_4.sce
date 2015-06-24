//Exa 2.4
clc;
clear;
close;
//given data
dt=5;//in uSec
Vp=5;//in Volt
dV=(0.9-0.1)*Vp
SR=dV/dt;//in V/uSec
disp(SR,"Calculated SR in V/uSec is : ");
disp("The 741C op-amp with a slew rate of 0.5 V/uSec is slow and can not be used.");