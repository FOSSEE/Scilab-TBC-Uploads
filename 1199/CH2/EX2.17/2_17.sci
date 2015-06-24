// 2.17
clc;
strain=-5*10^-6;
Gf=-12.1;
R=120;
dR_nickel=Gf*R*strain;
printf("Change in resistance of nickel = %.3f ohm",dR_nickel)
Gf=2;
R=120;
dR_nicrome=Gf*R*strain;
printf("\nChange in resistance of nicrome = %.3f ohm",dR_nicrome)