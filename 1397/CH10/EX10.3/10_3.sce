//clc();
clear;
//To compute the lattice specific heat and estimate the electronic specific heat
T=300;          //specific heat at constant volume
Td=418;         //debye temperature
Ef=11.7;        //fermi energy in ev
R=1.99;
p1=(%pi)^4;
Cv=(12*p1*R*(T^3))/(5*(Td^3));
printf("vibrational specific heat in cal/mol-k is");
disp(Cv);
Ef=Ef*4.2*1.6*10^-19;      //converting from eV to cal
k=5.796*10^-23;         //boltzmann constant in cal/k
Tf=Ef/k;
p2=(%pi)^2;
Ce=(p2*R*T)/(2*Tf);
printf("electronic specific heat in cal/mol-k is");
disp(Ce);

//answer in book is wrong
