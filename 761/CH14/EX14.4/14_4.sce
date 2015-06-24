clc;
//page no 468
//prob no. 14.4
//Refer fig. 14.13(a)
vs=1;//source voltage
Rs=50;//source resistance
Zo=50;//line impedance
RL=25;//load resistance
l=10;//length of line
vf=0.7;//velocity factor
Vi=0.5;
c=3*10^8;//velo of light
//Vs will divide between Rs and Zo of the line.Since two resistors are equal,the voltage will divide equally.
//Therefore at t=0,the voltage at the source end of the line will rise from zero to 0.5V. The voltage at the load will remain zero untill the surge reaches it.The time for this is
T=l/(vf*c);
// After T sec, the voltage at the load will rise.The reflection coefficient is given as
refl_coeff=(RL-Zo)/(RL+Zo)
//Now reflection voltage is 
Vr=refl_coeff * Vi;
//The total voltage at the load is
Vt=Vr+Vi;
disp('V',Vt,'The total voltage at the load is');
// The reflected voltage will propogate back along the line,reaching the source at time 2T.After this the voltage will be 0.3335V all along the line
//The voltage across the line, and the load will be
VL=vs*(RL/(RL+Zo));
disp('V',VL,'The voltage across the line,');