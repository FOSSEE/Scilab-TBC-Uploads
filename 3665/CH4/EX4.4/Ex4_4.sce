clc//
//
//

//Variable declaration
T1=273+25;      //temperature(K)
T2=273+350;     //temperature(K)
Ef=1.35;     //energy(eV)
k=8.625*10^-5;

//Calculation
x=(Ef/k)*((1/(2*T1))-(1/(2*T2)))/2.303;
r=1/(10^(x));      //ratio of Frenkel defects


//Result
printf("\n ratio of Frenkel defects is %0.3f *10^-6",r*10^6)
