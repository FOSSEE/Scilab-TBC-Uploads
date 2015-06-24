// Example 2.52:Ai,Ri,Av
clc;
clear;
close;
Rs=0.5;//Internal resistance in killo ohms
Rl=5;//Load resistance in killo ohms
//H Paramters are
Hie=1;//in killo ohms
Hfe=50;
Hoe=25*10^-6;// in ampere per volt
Ai= (1+Hfe)/(1+Hoe*Rl*10^3);// Current gain
Ri= Hie+(Ai*Rl);// Input resistance in killo ohms
Av= Ai*(Rl/Ri);// Voltage Gain
disp(Ai,"Current gain is")
disp(Ri,"Input resistance in killo ohms is")
disp(Av,"Voltage gain is")
