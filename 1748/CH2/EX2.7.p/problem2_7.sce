//problem 2.7
clc;
clear;
close;
//given data :
format('v',5);
P=6;//No. of poles
m=3;//No. of phase
f=60;//in Hz
Eff=85;//in %
N=1152;//in rpm
T=70;//in Nw-m
Ns=120*f/P;//in rpm
Twatts=2*%pi*Ns/60*T;//in watts
RotorInput=Twatts;//in watts
disp(RotorInput/1000,"Total Input to the rotor(KW) : ");
S=(Ns-N)/Ns;//unitless
CuLoss=S*RotorInput;//in watts
disp(CuLoss,"Rotor Copper Loss(watts) : ");
Tdev=2*%pi*N/60*T;//in Watts
disp(Tdev,"Mechanical Power devloped(in Watts)");
//Note : Answer in the book is calculated right but in the end printed wrong.
