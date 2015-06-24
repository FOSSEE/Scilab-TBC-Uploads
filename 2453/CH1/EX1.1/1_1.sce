//To determine whether the gaseous molecule is stable
IE_1 = 502;     //first ionisation energy, kJ/mol
EA_B = -335;    //electron affinity for B atom, kJ/mol
e = 1.602*10^-19;
r = 0.3;      //inter ionic seperation, nm
r = r*10^-9;      //inter ionic seperation, m
N = 6.022*10^23*10^-3;
epsilon0 = 8.85*10^-12;      //permittivity of free space, C/N-m
E = (-e^2*N)/(4*%pi*epsilon0*r);      //electrostatic attraction energy, kJ/mol
printf("electrostatic attraction energy is %d kJ/mol",E);
dE = IE_1+EA_B+E;     //net change in energy per mole
printf("net change in energy is %d kJ/mol",dE);
printf("since the net change in energy is negative, A+B- molecule will be stable");

//answer for net change, dE given in the book is wrong
