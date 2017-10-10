clc;
clear all;
disp("Ingot velocity ")
D=10/100;//m Diameter of cylindrical ingot
L=30/100;//m
ti=1250;// degree C
t=800;// degree C
ta=90;// degree C
k=40;// W/m.C
h=100;// W/m^2.C
a=1.16*10^(-5);//m^2/s
Lc=D*L/(4*L+2*D);//m
Lc
Bi=h*Lc/k;
disp(Bi,"Bi =")
//(t-ta)/(ti-ta)=exp(-a*h*As*tau/(k*V))
//h*As/rho*V*c =-a*h*As/(k*V)=-a*h*tau/(k*Lc)
X=-a*h/(k*Lc);
////(t-ta)/(ti-ta)=exp(X*tau)
tau=(1/X)*log((t-ta)/(ti-ta));
disp("S", tau,"time required tau =")
Lf=6;//m furnace length
vel=Lf/tau;
disp("m/s",vel,"velocity of ingot passing through furnace  =")

