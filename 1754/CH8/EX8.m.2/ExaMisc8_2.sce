//Exa Misc 8.2
clc;
clear;
close;
//given data
format('v',6);
fo=10;//in KHz
R1=25;//in kohm
R2=60;//in kohm
Rc=40;//in kohm
R=7.1;//in kohm
hie=1.8;//in kohm
C=1/(2*%pi*fo*10^3*R*10^3*sqrt(6+4*Rc/R));//in F
disp(C*10^9,"Value of Capacitor(in nF) :");
hfe=23+29*R/Rc+4*Rc/R;//unitless
disp("Value of hfe is ≥ "+string(hfe));
