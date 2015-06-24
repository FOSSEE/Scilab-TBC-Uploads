// Calculating the value of the resistance of the gauges
clc;
strain=-5*10^-6;
Gf=-12.1;
R=120;
dR_nickel=Gf*R*strain;
disp(dR_nickel,'change in resistance of nickel(ohm)=')
Gf=2;
R=120;
dR_nicrome=Gf*R*strain;
disp(dR_nicrome,'change in resistance of nicrome(ohm)=')