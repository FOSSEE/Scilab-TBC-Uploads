clc;
clear;
format('e',11)
D=10.5*10^3;                          //density of silver.
m=107.9*10^-3;                        //atomic mass of silver.
e=-1.602*10^-19;                      //charge of electron.
Na=6.022*10^23;                       //Avogadro's no.
N1=Na/m;                              //N1=no. of atoms per kg.
N2=N1*D;                              //N2=no. of atoms per cube meter.
rho_m=N2*e;                           //rho_m=mobile charge density.
disp(rho_m,"mobile charge density(in C/m^3)=")
