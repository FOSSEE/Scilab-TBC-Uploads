// Exa 6.9
clc;
clear;
close;
// Given data
P=100;// in ohm
Q=1000;// in ohm
S=2000;// in ohm
E=5;// in volt
Si= 5;// in mm/miuA
Rg=200;// in ohm
R_desh= 202;// in ohm
R=P*S/Q;// in ohm
del_R= R_desh-R;// in ohm
E_Th= E*[(R+del_R)/(R+del_R+S)- P/(P+Q)];// in volt
R_Th= [(R+del_R)*S/(R+del_R+S)+ P*Q/(P+Q)];//in ohm
Ig= E_Th/(R_Th+Rg);// in amp
Ig=Ig*10^+6;// in micro amp
theta= Si*Ig;// in mm
disp(theta,"Deflection of the galvanometer in mm")
S_B= theta/del_R;// in mm/ohm
disp(S_B,"Sensitivity of the bridge in mm/ohm")
