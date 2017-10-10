clc//
//
//

//Variable declaration
e=1.602*10^-19;   //charge of electron(c)
epsilon0=8.85*10^-12;    //permittivity(C/Nm)
r0=236*10^-12;     //seperation(m)
N=6.022*10^20;
IP=5.14;     //ionisation energy of A(kJ/mol)
EA=3.65;    //electron affinity for B(kJ/mol)

//Calculation
Ue=-e^2/(4*%pi*epsilon0*r0*e);    //potential energy(eV)
BE=-Ue-IP+EA;      //bond energy(eV)

//Result
printf("\n bond energy is %0.2f eV",BE)
