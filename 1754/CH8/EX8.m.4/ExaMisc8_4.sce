//Exa Misc 8.4
clc;
clear;
close;
//given data
format('v',5);
L=40;//in mH
C1=100;//in pF
C2=500;//in pF
Vout=10;//in volt
fo=1/(2*%pi*sqrt(L*10^-3*C1*10^-12*C2*10^-12/(C1*10^-12+C2*10^-12)))
disp(fo*10^-3,"Frequency of oscillation (in KHz) :");
Vf=Vout*C1/C2;//in volt
disp(Vf,"Feedback voltage in volt :");
Gain=C2/C1;//unitless
disp(Gain,"Minimum Gain is ");
//if Gain=10
Gain=10;//given
C1=C2/Gain;//in pF
disp(C1,"For a gain of 10 C1 in pF is :");
fo=1/(2*%pi*sqrt(L*10^-3*C1*10^-12*C2*10^-12/(C1*10^-12+C2*10^-12)))
disp(fo*10^-3,"New frequency of oscillation (in KHz) :");
