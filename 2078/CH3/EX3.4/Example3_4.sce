//Exa 3.4
clc;
clear;
close;
//Given data :
V=11;//kV
P=1500;//kW
pf=0.8;//lagging power factor
t=300*8;//hours
a=poly(0,'a');//cross section area
Cc=8000+20000*a//Rs/km
R=0.173/a;//ohm/km
E_lost_cost=2/100;//Rs/unit
i=12;//%(interest and depreciation)
Cc_var=20000*a//Rs/km(variable cost)
P2a=Cc_var*i/100;//Rs/km
P2=P2a/a;
I=P/sqrt(3)/V/pf;//A
W=3*I^2*R;//W
E_loss=W/1000*t;//kWh
P3BYa=E_lost_cost*E_loss;//Rs
//P2a=P3BYa;//For most economical cross section
a=sqrt(coeff((numer(P3BYa))/coeff(numer(P2))));//cm^2
d=sqrt(4*a/%pi);//cm
del=I/a;//A/cm^2
disp(d,"Diameter of conductor in cm : ");
disp(del,"Most economical current density in A/cm^2 : ");
