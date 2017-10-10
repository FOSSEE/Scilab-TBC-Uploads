// To determine Input current and voltage during SC test

clc;
clear;

Vh=6600;
Vl=250;
V=400;

a=Vh/Vl; // Turns ratio

Rh=0.21;
Rl=2.72*(10^-4);

Xh=1;
Xl=1.3*(10^-3);

Rt=Rh+Rl*(a^2); // Equivalent resistance w.r.t the primary
Xt=Xh+Xl*(a^2); // Equivalent reactance w.r.t the primary

ZHeq= sqrt((Rt^2)+(Xt^2));

Ih=V/ZHeq; // Current on high voltage side

Pi=(Ih^2)*Rt; // Power input

printf('W.R.T High Voltage side the equivalent resistance is %g ohms and the equivalent reactance is %g ohms \n',Rt,Xt)

printf('The current on the high voltage side is %g A \n',Ih)

printf('Power Input on the high voltage side is %g kW \n',Pi/1000)


