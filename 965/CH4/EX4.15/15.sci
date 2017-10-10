clc;
clear all;
disp("copper-constantan thermometer")
R=2.5/2000;//m
ti=25;//degree C
ta=215;// degree C
t=165;// degree C
rho=8750;// kg/m^3
c=380;// J/kg.C
h=145;//W/m^2.C
kth=28;// W/m.C

As=4*3.1416*R*R;//m^2
V=4*3.1416*(R^3)/3;//m^3
Lc=V/As;
a=k/(rho*c);
//Fo=a*tau/Lc^2;
Bi=h*Lc/k;
th=t-ta;
tha=ti-ta;
thm=th/tha;

Fo=(-1/Bi)*log(thm);
tau=(Fo*Lc^2)/a;
disp("s",tau,"tau  =")

Fo=1/Bi;
tau=(Fo*Lc^2)/a;
disp("s",tau,"tau*  =")
thm=exp(-1);
th=thm*tha;
t=th+ta;

disp("degree C",t,"temperature  t =")
