//To calculate the distance between two adjacent atoms
MW = 23+35.5;     //molecular weight of NaCl, gm
N = 6.023*10^23;     //avagadro number, mol-1
rho = 2.18;     //density of NaCl, gm/cm^3
M = MW/N;      //mass of NaCl molecule, gm
n = rho/M;     //number of molecules per unit volume
n = 2*n;      //since NaCl is diatomic, atoms/cm^3
//length of edge of unit cube is n*a
//volume V = n^3*a^3 = 1 cm^3 
V = 1;    //volume of unit cube, cm^3
a = (V/n)^(1/3);      //distance between two adjacent atoms, cm
a = a*10^8;       //distance between two adjacent atoms,A
printf("distance between two adjacent atoms is %5.2f A",a);
