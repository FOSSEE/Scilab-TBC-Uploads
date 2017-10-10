clc;
clear all;
disp("To find area of superheater")
r1=35/2;//mm inner radius of pipe
r2=45/2;//mm outer radius of pipe
kA=38.5;// W/(m*C) thermal conductivity of pipe material
ho=82;// W/(m^2*C)
hi=1120;// W/(m^2*C)
to= 920;// degree C
Cps=192;//kJ/(kg*C)
ms=55;//kg
tsup=480;// degree C
tsat=324.6;// degree C
ti=(tsup+tsat)/2;
Q=ms*Cps*(tsup-tsat);//kJ/s
//Q=2*3.1416*L*(to-ti)/(1000/(ho*r2)+(log(r2/r1))/k+1000/(hi*r1));
L=(16410.24*10^(3))/5425.8
disp("m")
A=2*3.1416*r2*L/1000;
disp("m^2",A,"Outer surface area of superheater = ")



