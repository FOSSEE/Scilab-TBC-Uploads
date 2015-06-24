//Caption:Determine the upper 3db frequency of the amplifier
//Ex1.4
clc;
clear; 
close;
tr=1//Rise time(in micro sec)
fu=0.35*10^6/tr
disp(fu,'The upper 3db frequency of the amplifier(in hertz)=')