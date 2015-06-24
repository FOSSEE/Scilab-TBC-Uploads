
//Exa:2.11
clc;
clear;
clc;
close;
//Given:
//Vt=[50+205msin(5*10^3*pi*t)]cos(2*pi*10^7)V
//comparing it with Vt=[Vc+Vesin(Wm*t)]cos(wc*t)V
Vc=50;
Ve=20;
wc=2*%pi*10^7;
wm=5*10^3;
fm=500/2;
fc=10^7;
m=Ve/Vc;
Pc=Vc*Vc;
Ps=(m*m/4)*Pc*2;
Pt=Pc+Ps;
printf("\n\n\t carrier frequency =%f",fc);
printf("\n\n\t modulating frequency =%f",fm);
printf("\n\n\t modulation index =%f",m);
printf("\n\n\t Total Power =%f",Pt);