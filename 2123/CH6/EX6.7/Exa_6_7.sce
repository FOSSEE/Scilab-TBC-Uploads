//Example No. 6.7
clc;
clear;
close;
format('v',6);

//Given Data : 
V=400;//volt
P=8;//pole
f=50;//Hz
r1=0.1;//ohm
r2dash=0.1;//ohm
x1=0.4;//ohm
x2dash=0.4;//ohm
J=10;//Kg-m^2
Sm=r2dash/sqrt(r1^2+(x1+x2dash)^2)
Ns=2*f/P;//rps
omega_ms=2*%pi*Ns;//rad/s
V1=V/sqrt(3);//V
Tmax=1.5*V1^2/(2*%pi*Ns)*[1/(r1+sqrt(r2dash^2+(2*x2dash)^2))];//N-m
tau_m=J*omega_ms/Tmax;//sec
ts=tau_m*(1.5*Sm+0.25/Sm);//sec
disp(ts,"Starting time in sec : ");
E=0.5*J*omega_ms^2;//Watt-s
Etot=2*E;//Watts-s
disp(Etot/1000,"Energy dissipated during starting in KW-s : ");
tb=tau_m*(0.7/Sm+0.334*Sm);//sec
disp(tb,"Pluggingfg time in sec : " );
E=1.4*J*omega_ms^2;//Watt-s
E=2*E/1000;//KW-s(taking cU loss into account)
disp(E,"Energy dissipated during plugging in KW-s : ");
