//Exa 3.7
clc;
clear;
close;
//Given data :
P1=1000;//kW
pf1=0.8;//
t1=10;//hours
P2=500;//kW
pf2=0.9;//
t2=8;//hours
P3=100;//kW
pf3=1;//
t3=6;//hours
a=poly(0,'a');//cross section area
I=poly(0,'I');//Current
L=poly(0,'L');//length in km
CcBYL=(8000*a+1500)//Rs/km(variable cost)
i=10;//%(depreciation)
E_lost_cost=80/100;//Rs/kWh
rho=1.72*10^-6;//ohm-cm
Cc_varBYL=8000*a*i/100//Rs/km(variable cost)
I1=P1*1000/sqrt(3)/10000/pf1;//A
I2=P2*1000/sqrt(3)/10000/pf2;//A
I3=P3*1000/sqrt(3)/10000/pf3;//A
R_into_a_BY_L=rho*1000*100;//ohm
W_into_A_BY_Isqr=R_into_a_BY_L;//W
E_loss_into_A_BY_L=3*R_into_a_BY_L*[I1^2*t1+I2^2*t2+I3^2*t3]*365/1000;//kWh
E_loss_cost_into_A_BY_L=E_loss_into_A_BY_L*E_lost_cost;//Rs
//Cc_var=E_loss_cost;//For most economical cross section
a=sqrt(coeff((numer(E_loss_cost_into_A_BY_L))/coeff(numer(Cc_varBYL/a))));//cm^2
disp(a,"Most economical cross sectional area in cm^2 : ");
