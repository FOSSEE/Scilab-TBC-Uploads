//Example 8.4
clear;
clc;

//Given
v=2;
p=1;//pressure in atm
V=1;//volume in L
R=0.082;// gas constant in L atm K^-1 mol^-1
T=298.15;// temperature in K
w=3.176;// weight of N2O4 taken in g

// To determine degree of dissociation a
m1=(2*14)+(4*16);//molecular mass of N2O4 in g mol^-1
m2=(w*R*T)/(p*V);//in g mol^-1
a=(m1-m2)/m2((v-1));//degree of dissociation
mprintf('Degree of dissociation = %f ',a);
//end