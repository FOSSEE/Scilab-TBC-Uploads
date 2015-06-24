//Chemical Engineering Thermodynamics
//Chapter 2
//P-V-T Relations

//Example 2.6
clear;
clc;

//Given
P1 = 266;
T1 = 473.16;//Initial temperature in Kelvin
T2 = 273.16;//Final temperature in Kelvin
V1 = 80; V2 = 80;//Initial & final volume in litres
N1 = (14.28/28); N2 = (14.28/28);//Initial and final Kg moles are equal
Tc = 126;//Critical temperature of N2 in K
Pc = 33.5;//Critical pressure of N2 in atm

//To calculate the final pressure achieved
//(i)Using ideal gas law
p2 = (P1*V1*N2*T2)/(V2*N1*T1);
mprintf('(i)Final pressure of N2  using ideal gas law is %f atm',p2);

//(ii)Using generalized Z chart
Tr1 = T1/Tc;//reduced initial temp in k
Pr1 = P1/Pc;//reduced initial press in K
//From the Z-chart compressibility factor coressponding to the above Tr1 &Pr1 is
Z1 = 1.07;
P2 = [125,135,150];
Z2 = [0.95, 0.96, 0.98];
F = [0,0,0];
for i = 1:3
    F(i) = (P2(i)/(Z2(i)*T2))-(P1/(Z1*T1));
end
clf;
plot(P2,F);
xtitle("P2 vs F","P2","F");
P3 = interpln([F;P2],0);
mprintf('\n (ii)Final pressure of N2 from Z chart is %f atm',P3);

//(iii)Using Pseudo reduced density chart
R = 0.082;//gas constant
v = V1/N1;//Volume per moles of nitrogen in m^3/Kg mole
Dr = (R*Tc)/(Pc*v);
Tr2 = T2/Tc;//final reduced temp in K
//From figure A.2.1, reduced pressure coressponding to this Dr and Tr2 is
Pr2 = 4.1//final reduced pressure in atm
p2_ = Pr2*Pc;
mprintf('\n (iii)Final pressure achieved using Dr chart is %f atm',p2_);
//end