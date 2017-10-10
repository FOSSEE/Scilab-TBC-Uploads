clc;
clear all;
disp("fracion and pressure")

Ma=24;
Mb=48;
M=30;
rho=1.2;// kg/m^3
T=290;// K
C=rho/M;// mole concentration of the mixture
//Ca=C-Cb
//rhoA+rhoB=rho;
//rhoA=Ma*Ca
//rhoB=Mb*Cb
//24*(C-Cb)+48*Cb=rho
Cb=(rho-24*C)/24;//kg mole/m^3
Ca=C-Cb;//kg mole/m^3
rhoA=Ma*Ca;// kg/m^3
rhoB=Mb*Cb;// kg/m^3
xA=Ca/C;
disp(xA,"mole fraction of A, xA =")
xB=Cb/C;
disp(xB,"mole fraction of B, xB =")
mA=rhoA/rho;
disp(mA,"mole fraction of A, mA =")
mB=rhoB/rho;
disp(mB,"mole fraction of B, mB =")
G=8.314;// kJ/(kgmole*K)
p=rho*G*T/M;
disp("kPa",p,"Total pressure p =")

