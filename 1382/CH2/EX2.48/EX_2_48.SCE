// Example 2.48:Ai,Ri,Av,Ro
clc;
clear;
close;
Rl=1.2*10^3;//Load resistance in ohms
//H Paramters are
Hib=28;//in  ohms
Hrb=5*10^-4;
Hfb=-0.98;
Hob=0.34*10^-6;// in ampere per volt
Ai= -Hfb/(1+Hob*Rl);// Current gain
Ri= Hib+(Hrb*Ai*Rl);// Input resistance in ohms
Av= round(Ai*(Rl/Ri));// Voltage Gain
dh=(Hib*Hob)-(Hrb*Hfb);
Ro=(Hib/dh)*10^-3;// Output resistance in killo ohms
disp(Ai,"Current gain is")
disp(Ri,"Input resistance in ohms is")
disp(Av,"Voltage gain is")
disp(Ro,"Ouput resistance in killo ohms")
