clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 2.15
//Caption : Program to Find the Temperature in the second Tank

//Given values

R=3.15*10^-3;//[m^3/s]  Rate of pumping
rH=-700;//[KW]  Rate of Heat lost  
h=15;//[m]  Height
rW=1.5;//[KW]
rho=958;//[Kg/m^3]  at 366.65K
g=9.805;
gc=1000;
del_z=h;

//Solution

rm=approx(R*rho,3);//[Kg/s]  Mass flow rate
Q=approx(rH/rm,1);//[KJ/Kg]
W=approx(rW/rm,3);//[KJ/Kg]  Shaft Work
K=approx(g/gc*del_z,3);

//using Eqn(2.32b)
del_H=Q+W-K;

//From Steam tables for water at 366.65K
H1=391.6;//[KJ/Kg]
H2=del_H+H1;
disp('KJ/Kg',H2,'Enthalpy')
//From Steam Tables temp at this enthalpy is
T=311.35;//[K]
disp('K',T,'Temperature in the Second tank')

//End