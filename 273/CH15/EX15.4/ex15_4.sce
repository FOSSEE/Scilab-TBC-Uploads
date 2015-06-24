clc;clear;
//Example 15.4
//calculation of amount of unchanged material

//given values
T=2;//half life in years
k=.6931/T;//decay constant
M=4.0028;//mass of Helium nucleus in amu
amu=931.4;//amu in MeV
No=1;//initial amount in g

//calculation
N=No*(%e^(-k*2*T));
disp(N,'amount of material remaining unchanged after four years(in gram) is');

