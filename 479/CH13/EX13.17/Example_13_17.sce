//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.17
clear;
clc;

//Given
H_ex = 539;//Heat of vapoization of water in Kcal/Kg
Tc = 647;//Critical temperature in K
Pc = 218;//Critical pressure in atm
Tb = 373;//Boiling point of water in K
t = 100;//temperature in deg cel
M = 18;//Molecular weight of water
P = 1;//pressure at boiling point in atm
P1 = 1.033*10^4;//pressure in Kgf/sq m

//To Calculate the heat of vapourisation of water by Vishwanath and Kuloor method and by Riedel's method and compare with the experimental value
//(i) Using Vishwanath and Kuloor method
H_c = (4.7*Tc*((1-(P/Pc))^0.69)*log(P/Pc))/((1-(Tc/Tb))*18);
mprintf('(i)The heat of vapourisation of water using Vishwanath and Kuloor method is %f Kcal/Kg',H_c);
D = (H_c-H_ex)*100/H_c;
mprintf('\n    The deviation occurs using this method is %f percent',D);

//(ii)Using Riedel's method
H_c = (Tb*2.17*(log(218)-1))/((0.93-(Tb/Tc))*18);
mprintf('\n\n(ii)The heat of vapourisation of water using Riedel method is %f Kcal/Kg',H_c);
D = (H_c-H_ex)*100/H_c;
mprintf('\n    The deviation occurs using this method is %f percent',D);

//(iii)By using given vapour equation; logP = 8.2157-(2218.8537/(273.16+t)), t is in deg cel
//From steam table,
Vv = 1.673;//in cubic meter/Kg
Vl = 0.001;//in cubic meter/Kg
H_c = (2218.8/(273.16+t)^2)*(2.3*Tb*P1*(Vv-Vl)/427);
mprintf('\n\n(iii)The heat of vapourisation using the given vapour equation is %f Kcal/Kg',H_c);
D = (H_c-H_ex)*100/H_c;
mprintf('\n    The deviation occurs using this method is %f percent',D);
//end