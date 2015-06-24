clc;clear;
//Example 15.3

//given data
P=101.325;
RH=0.8;
T1=20;

//from Table A-4
Psat=2.3392;

//calculations
//consedering 1 kmol of fuel
// 0.72CH4 + 0.09H2 + 0.14N2 + 0.02O2 + 0.03CO2 +  ath(O2 + 3.76N2) = xCO2 + yH2O + zN2
//element balance
x=0.72+0.03
y=(0.72*4+0.09*2)/2;
ath=x+y/2-0.02-0.03;
z=0.14+3.76*ath;
Pv=RH*Psat;
// Nv,air = Pv,air/Ptotal * Ntotal
Nvair=Pv/P*6.97/(1-(Pv/P));
//0.72CH4 + 0.09H2 + 0.14N2 + 0.02O2 + 0.03CO2 +  1.465(O2 + 3.76N2) + 0.131H20 = 0.75CO2 + 1.661H2O + 5.648N2
Pvprod=1.661/8.059*P;
//at this Pvprod
Tdp=60.9;
disp(Tdp,'the dew-point in C')
