//Example 3.49: readings
clc;
clear;
close;
rp=1;//M-ohm
rn=2;//M-ohm
r=50;//killo ohms
x=((rp*10^6)/(r*10^3));//
v=500;//volts
ep=(v)/((rn*x+(rn+rp)));//volts
en=2*ep;//
disp(ep,"Ep is ,(V)=")
disp(en,"En is,(V)=")
