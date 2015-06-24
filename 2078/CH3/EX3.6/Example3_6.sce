//Exa 3.6
clc;
clear;
close;
//Given data :
A=poly(0,'A');//cross section area
I=poly(0,'I');//Current
Cc=500+2000*A//Rs/km
load_factor=0.12;
i=12;//%(depreciation)
E_lost_cost=0.05;//Rs/kWh
R=0.17/A;//ohm/km

Cc_var=2000*A//Rs/km(variable cost)
P2A=Cc_var*i/100;//Rs/km
P2=P2A/A;
R_into_A=R*A;//ohm
W_into_A_BY_Isqr=R_into_A;//W
E_loss_into_A_BY_Isqr=W_into_A_BY_Isqr*load_factor/1000*8760;//kWh
P3BYIsqr=E_lost_cost*E_loss_into_A_BY_Isqr;//Rs
//P2a=P3BYa;//For most economical cross section
IBYa=sqrt(coeff((numer(P2))/coeff(numer(P3BYIsqr))));//cm^2
disp(IBYa,"Most economical current density in A/cm^2 : ");
//Answer in the textbook is wrong.
