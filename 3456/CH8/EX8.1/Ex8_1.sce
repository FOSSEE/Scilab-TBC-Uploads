//Example 8.1
//Standard properties of the material
//Page No. 281
clc;clear;close;

D=0.505;            //in inches
Lo=2;                 //in inches
Lf=2.53;            //in inches
Py=15000;          //in lb
Pmax=18500;         //in lb
Pf=16200;          //in lb
D_f=0.315;          //in inches
A0=%pi*D^2/4;
Af=%pi*D_f^2/4;
s_u=Pmax/A0;
s0=Py/A0;
s_f=Pf/A0;
e_f=(Lf-Lo)/Lo;
q=(A0-Af)/A0;
printf('\nUltimate Tensile Strength = %g psi\n0.2 percent offset yield strength = %g psi\nBreaking Stress = %g psi\nElongation = %g percent\nReduction of Area = %g percent\n\n\nNote: Slight Computational Errors in book',s_u,s0,s_f,e_f*100,q*100);
