//Exa 2.30
clc;
clear;
close;
//Given data :
format('v',6);
//At 50% speed of synchronous speed
S=50;//in %
UsefulOutput=55;//in H.P.
MechLoss=2;//in H.P.
StatorLoss=13.5;//in KW
Pout_rotor=UsefulOutput+MechLoss;//in H.P.
Pout_rotor=Pout_rotor*0.7355;//in KW
Efficiency=(1-S/100);//unitless
RotorInputPower=Pout_rotor/Efficiency;//in KW
RotorCuLoss=RotorInputPower-Pout_rotor;//in KW
disp(RotorCuLoss,"Cu Loss in the rotor circuit(in KW) :");
TotalLosses=StatorLoss+RotorCuLoss+MechLoss*0.7355;//in KW
MotorEfficiency=UsefulOutput*0.7355/(UsefulOutput*0.7355+TotalLosses);
disp(MotorEfficiency*100,"Motor Efficiency(in %) : ");