//problem 2.5
clc;
clear;
close;
//given data :
format('v',5);
MotorInput=50;//in KW
Slip=3;//in %
RotCuLoss=MotorInput*Slip/100;//in KW
disp(RotCuLoss,"Rotor Copper Loss(KW) : ");
TMechP=MotorInput-RotCuLoss;//in KW
disp(TMechP,"Total mechanical power devloped(KW) : ");
