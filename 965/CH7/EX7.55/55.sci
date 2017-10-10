clc;
clear all;
disp("number of tubes")
ts=80;//degree C saturated steam temperature
kb=110;// W/m.C thermal conductivity of brass
do=1.59/100;// m OD of tubes
ro=do/2;
di=1.34/100;// m ID of tubes
ri=di/2;
tc1=20;//degree C
tc2=40;//degree C
mw=55000/3600;//kg/s
U=1.4;//m/s
kw=0.659;// W/m.C thermal conductivity of water
rho=979.8;//kg/m^3
cp=4180;// J/kg.K
mu=0.4044*10^(-3);//Pa.s
ho=10760;// W/m^2.C
Q=mw*cp*(tc2-tc1);
Af=mw/(rho*U);
N=ceil(4*Af/(%pi*di^2));
disp(N,"numebr of tubes =")
Re=rho*U*di/mu;
Pr=mu*cp/kw;
Nu=0.023*Re^0.8*Pr^0.4;
hi=kw*Nu/di;
Uo=1/(1/ho+ro*(log(ro/ri))/(2*kb)+ro/(ri*hi));

th1=ts-tc1;
th2=ts-tc2;
thm=(th1-th2)/log(th1/th2);
//Ao=%pi*do*L
Ao=Q/(Uo*thm);
L=Ao/(%pi*do*N);
disp("m",L,"length of each tube =")
