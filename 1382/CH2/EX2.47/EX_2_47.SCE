// Example 2.47:Ai,Ri,Av
clc;
clear;
close;
Rs=800;//Internal resistance in ohms
Rl=1000;//Load resistance in ohms
//H Paramters are
Hie=1;//in killo ohms
Hre=2*10^-4;
Hfe=50;
Hoe=25*10^-6;// in ampere per volt
Ai= -Hfe/(1+Hoe*Rl);// Current gain
Ri= Hie*10^3-((Hfe*Hre)/(Hoe+(1/Rl)));// Input resistance in ohms
Av= Ai*(Rl/Ri);// Voltage Gain
disp(Ai,"Current gain is")
disp(Ri,"Input resistance in ohms is")
disp(Av,"Voltage gain is")
