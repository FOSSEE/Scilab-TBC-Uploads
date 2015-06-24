//Exa 8.5
clc;
clear;
close;
//given data
V=0.15;// in m/s
di=2.5*10^-2;// in m

delta=0.364*10^-6;// in m^2/s
k=0.668;// in W/m degree C
Pr=2.22;

Re=V*di/delta;
// Formula Nu= hi*di/k = 0.023*Re^0.8*Pr^0.3
hi=0.023*Re^0.8*Pr^0.3*k/di;// in W/m^2 degree C

// Now, Reynold number for flow of air across the tube
delta=18.22*10^-6;// in m^2/s
k=0.0281;// in W/m degree C
Pr=0.703;
d=2.5*10^-2;// in m
u=10;// in m/s
Re=u*d/delta;
Re=floor(Re);
//The Nusselt number for this case
Nu=[0.04*Re^0.5+ 0.006*Re^(2/3)]*Pr^0.4
// Formula Nu= ho*do/k
do=di;
ho=Nu*k/do;// in W/m^2 degree C
disp(ho,"Heat transfer coefficient in W/m^2 degree C");
U=1/(1/hi+1/ho);
disp(U,"The overall heat transfer coefficient neglecting the wall resistance in W/m^2 degree C");
l=1;// in m
Ti=90;// in degree C
To=10;// in degree C
q=U*%pi*d*l*(Ti-To);
disp(q,"Heat loss per meter length of the tube in W/m")

// Note: Answer in the book is wrong






