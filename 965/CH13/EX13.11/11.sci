clc;
clear all;
disp("evaporation rate calculation")
U=2.8;// m/s
L=300/1000;//m
rho=1.205;//kg/m^3
v=15.06*10^(-6);//m^2/s
D=4.166*10^(-5);//m^2/s

Re=U*L/v;// Reynolds No.
Re
if Re<5*10^5
disp("flow is laminar")
end
Sc=v/D;// Schmidt No.
Sc
Sh=0.664*((Re)^0.5)*(Sc)^(0.33);
Sh
L=320/1000;//m
hm=Sh*D/L;// m/s
disp("m/s",hm,"mass transfer coefficient = ")
disp("mass transfer based on pressure difference ")
T=15+273;//K
R=287;
hmp=hm/(R*T);// m/s
A=0.32*0.42;//m^2
pw1=0.017*10^(5);
pw2=0.0068*10^(5);
mw=hmp*A*(pw1-pw2)*3600;
disp("kg/h",mw,"mass diffusion of water =")
