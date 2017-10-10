//Harmonic response of a water tank
//Exa_2_1
clc;
clear;
close;

l=300*12;        //height of water tank
din=8*12;        //inner diameter of tubular cross section in.
dou=10*12;        //outer diameter of tubular cross section in.
m=6e5;        //weight of tank with water in lb
E=4e6;        //youngs modulus of reinforced concrete in psi

I= %pi / 64 * (dou^4 - din^4);        //moment of inertia in in.^4
k=3*E*I/l^3;
omegan=sqrt(k/m*386.4);        //natural frequency
disp(omegan,"Natual frequency of water tank in transverse direction in lb/in. :");

taon=2 * %pi / omegan;        //time period
disp(taon,"Natural time period of transverse vibration in seconds :")

//refer Eqa 2.23
xo=10;
Ao=10;        //constant in in.
phio=%pi / 2;        //phase angle
//vibration response
disp("vibration response");
disp("x(t)=Ao*sin(omegan*t + %pi/2)");
disp("where");
disp(Ao,"Ao=");
disp(omegan,"omegan=");

xdot_max=Ao*omegan;        //maximum velocity
disp(xdot_max,"maximum velocity of water tank in in./sec :")

xdotdot_max=Ao*omegan^2;        //maximum accelaration
disp(xdotdot_max,"maximum accelaration of water tank in in./sec^2 :")

