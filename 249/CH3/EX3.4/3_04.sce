clear
clc
// At 400k, -rA=2.3*pA^2
//At 500 k, -rA=2.3*pA^2
k1=2.3;k2=2.3;T1=400;T2=500;
//R=82.06*10^-6 m3.atm/mol.k
R=82.06*10^-6;
R1=8.314;//m3.pa/mol.k
E=(log(k2/k1)*R)/(1/T1-1/T2)
printf("\nRESULT\n")
printf("E(J/mol)using pressure units is %f",E)
//pA=CA*RT
//-rA=2.3(RT)^2*CA^2
k1=2.3*(R*T1)^2
k2=2.3*(R*T2)^2
E=(log(k2/k1)*R1)/(1/T1-1/T2)
printf("\nE(J/mol)using concentration units is %f",E)

