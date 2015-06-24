//Exa 3.5
clc;
clear;
close;
//Given data :
a=poly(0,'a');//cross section area
I=poly(0,'I');//Current
Cc=500+2000*a//Rs/km
i=12;//%(interest and depreciation)
E_lost_cost=5/100;//Rs/kWh
rho=1.78*10^-8;//ohm-cm
load_factor=0.12;
Cc_var=2000*a//Rs/km(variable cost)
P2a=Cc_var*i/100;//Rs/km
P2=P2a/a;
R_into_a=rho*1000/(10^-4);//ohm
W_into_a=I^2*R_into_a;//W
E_loss_into_a=W_into_a*load_factor/1000*8760;//kWh
P3BYIsqr=E_lost_cost*E_loss_into_a/I^2;//Rs
//P2a=P3BYa;//For most economical cross section
IBYa=sqrt(coeff((numer(P2))/coeff(numer(P3BYIsqr))));//cm^2
disp(IBYa,"Most economical current density in A/cm^2 : ");
