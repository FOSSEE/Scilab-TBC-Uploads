//Exam:3.11
clc;
clear;
close;
r_Na=0.98;//Radius of Na+(in A)
r_Cl=1.81;//Radius of Cl-(in A)
a=2*(r_Na+r_Cl);//Lattice parameter (in A)
pi=22/7;
V_i=4*(4/3)*pi*((r_Na^3)+(r_Cl^3));//Volume of ions present in unit cell
V_u=a^3;//Volume of unit cell
Apf=V_i/V_u;//Atomic packing fraction
Ef_p=(Apf)*100;//Packing efficiency(in %)
AM_sodium=22.99;//Atomic mass of sodium(in amu)
AM_chlorine=35.45;//Atomic mass of chlorine(in amu)
M_1=4*(AM_sodium+AM_chlorine)*1.66*10^(-27);//Mass of the unit cell
a_1=a*10^(-10);//Lattice parameter (in meter)
V_u1=(a_1)^3;
Density=M_1/V_u1;
disp(Ef_p,'Packing efficiency of sodium chloride(in %)=');
disp(Density,'density of sodium chloride(in Kg/m3)=');