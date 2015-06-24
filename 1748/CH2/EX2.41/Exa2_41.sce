//Exa 2.41
clc;
clear;
close;
//Given data :
format('v',6);
VL=440;//in volt
f=50;//in Hz
P=6;//no. of poles
phase=3;//no. of phase
Ns=120*f/P;//in rpm
fr=120;//alternations per minute
fr=fr/60;//in Hz
S=fr/f;//slip
disp(S,"Slip : ");
Nr=Ns-S*Ns;//in rpm
disp(Nr,"Rotor speed(in rpm) :");
Rotor_input=80;//in KW
RotorCuLoss=S*Rotor_input;//in KW
disp(RotorCuLoss*10^3/phase,"Rotor Cu Loss per phase(in watts) :");
P_Mechdev=Rotor_input*10^3-RotorCuLoss*10^3;//in watts
P_Mechdev=P_Mechdev/735.5;//in H.P.
disp(P_Mechdev,"Mechanical power devloped(in H.P.) :");
Ir=60;//in Ampere
R2=(RotorCuLoss*10^3/phase)/Ir^2;//in ohm
disp(R2,"Rotor resistance per phase(in ohm) :");