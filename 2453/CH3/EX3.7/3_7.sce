//To calculate the energy of electron
n1 = 1;
n2 = 1;
n3 = 2;      //for level next to the lowest
e = 1.6*10^-19;
h = 6.62*10^-34;      //planck's constant
m = 9.1*10^-31;      //mass of electron, kg
L = 0.1;     //side of box, nm
L = L*10^-9;    //side of box, m
E1 = h^2*(n1^2+n2^2+n3^2)/(8*m*L^2);      //lowest energy, J
E1 = E1/e;      //lowest energy, eV
printf("energy of electron is %5.2f eV",E1);

//answer given in the book is wrong in the 2nd decimal
