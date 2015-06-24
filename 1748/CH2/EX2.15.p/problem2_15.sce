//problem 2.15
clc;
clear;
close;
//given data :
format('v',7);
m=3;//No. of phase
P=8;//no. of poles
f=50;//in Hz
Pout=15;//in KW
S=4;//in %
R2=0.2;//in ohm per phase
Xo=1.5;//in ohm per phase
N=400;//in rpm
Ns=120*f/P;//in rpm
Sdash=(Ns-N)/Ns*100;//unitless
R2dash=R2*Sdash/S;//in ohm/phase
Radded=R2dash-R2;//in ohm
disp(Radded,"Resistance to be added in ohm : ");
Mechpower=Pout;//in KW
RotorInput=Mechpower/(1-S/100);//in KW
disp(RotorInput*1000," Input to the rotor(in watts)  : ");
RotorCuLoss=Sdash/100*RotorInput;//in KW
disp(RotorCuLoss*1000,"Rotor Copper Loss(in watts) : ");
OutPower=RotorInput-RotorCuLoss;//in KW
disp(OutPower*1000,"Output power(in Watts) : ");
disp(RotorInput*1000,"Input at a slip of 4%(in Watts) : ");
//Note  : Answer in the book is wrong due to calculation mistake.
