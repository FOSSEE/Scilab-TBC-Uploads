clc;
M=58.45;//atomic mass
N=6.02*1e23;//avogadro number
density=2.17*1e3 ; //in kg/m^3
n=4 //Nacl is FCC
a=(n*M/(N*density))^(1/3);//lattice constant
disp(+'m',a,'lattice constant = ');
//slight variation in ans than book.. checked in calculator also
