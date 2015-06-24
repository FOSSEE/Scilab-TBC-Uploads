// Exa 6.8
clc;
clear;
close;
// Given data
P=1000;// in ohm
Q=1000;// in ohm
S=100;// in ohm
E=2;// in volt
Rg=50;// in ohm
R_desh= 101;// in ohm
R=Q*S/P;// in ohm
del_R= R_desh-R;// in ohm
E_Th= E*[(R+del_R)/(R+del_R+S)- P/(P+Q)];// in volt
R_Th= [(R+del_R)*S/(R+del_R+S)+ P*Q/(P+Q)];//in ohm
Ig= E_Th/(R_Th+Rg);// in amp
Ig=Ig*10^+6;// in micro amp
disp(Ig,"The galvanometer current in micro amp")
