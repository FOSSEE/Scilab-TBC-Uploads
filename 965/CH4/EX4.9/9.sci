clc;
clear all;
disp("time for cooling")
D=10/1000;//m Diameter of plastic sphere
ti=75;// degree C
t=35;// degree C
ta=23;// degree C
V=10;// m/s
//for copper
kcu=400;// W/m.K
rhocu=8933;// kg/m^3
ccu=380;// J/kg.C
//for air at 23 degree C
mu=18.16*10^(-6);// N.s/m^2
v=15.36*10^(-6);//m^2/s
ka=0.0258;// W/m.K
Pr=0.709
mus=19.78*10^(-6);// N.s/m^2 at 35 degree C

Re=V*D/v
l=Re^0.5;
m=Re^(2/3);
n=Pr^0.4;
p=(mu/mus)^0.25;
Nu=2+(0.4*l+0.06*m)*n*p
h=ka*Nu/D;
X=(t-ta)/(ti-ta);
Y=-h*6/(rhocu*ccu*D);
tau=(log (X))/Y;// sec
disp("s",tau,"time taken to cool tau =")

