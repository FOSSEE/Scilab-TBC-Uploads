//To calculate the cohesive energy of NaCl
e = 1.602*10^-19;
epsilon0 = 8.85*10^-12;
r0 = 0.281;     //equilibrium seperation, nm
r0 = r0*10^-9;     //equilibrium seperation, m
A = 1.748;     //Madelung constant
n = 9;    //born repulsive exponent
CE = (A*e^2)*(1-(1/n))/(4*%pi*epsilon0*r0);    //cohesive energy, J
CE = CE/e;       //cohesive energy, eV
printf("cohesive energy of NaCl is %5.3f eV",CE);
