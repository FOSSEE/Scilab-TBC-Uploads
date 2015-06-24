clc;clear;
//Example 15.5
//calculation of amount of halflife

//given values
t=5;//time period in years
amu=931.4;//amu in MeV
No=5;//initial amount in g
N=5-(10.5*10^-3);//amount present after 5 years


//calculation
k=log(N/No)/t;//decay constant
T=-.693/k;
disp(T,'halflife in years is');