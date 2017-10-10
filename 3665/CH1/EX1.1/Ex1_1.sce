clc//
//
//

//Variable declaration
e=1.602*10^-19;   //charge of electron(c)
epsilon0=8.85*10^-12;    //permittivity(C/Nm)
r=3*10^-10;     //seperation(m)
N=6.022*10^20;
Ea=502;     //ionisation energy of A(kJ/mol)
Eb=-335;    //electron affinity for B(kJ/mol)

//Calculation
E=-e^2*N/(4*%pi*epsilon0*r);    //electrostatic attraction(kJ/mol)
nE=Ea+Eb+E;    //net change in energy per mole(kJ/mol)

//Result
printf("\n net change in energy per mole is %0.0f kJ/mol",nE)
printf("\n answer varies due to rounding off errors")
printf("\n since the net change in energy is negative, the A+B- molecule will be stable")
