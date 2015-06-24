// Example 2.53:Ai,Ri,Av
clc;
clear;
close;
Rs=1;//Internal resistance in  ohms
Rl=1600;//Load resistance in ohms
//H Paramters are
Hie=1100;//in  ohms
Hfe=2.5*10^-4;
Hoe=25*10^-6;// in ampere per volt
Ai= -Hfe/(1+Hoe*Rl);// Current gain
Ri= round(Hie+(Ai*Rl));// Input resistance in ohms
Av= Ai*(Rl/Ri);// Voltage Gain
Pg=Ai*Av;//
disp(Ai,"Current gain is")
disp(Ri,"Input resistance in killo ohms is")
disp(Av,"Voltage gain is")
disp(Pg,"Power gain is")
