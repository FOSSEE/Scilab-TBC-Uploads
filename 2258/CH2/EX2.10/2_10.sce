clc();
clear;
// To calculate the number of states per unit volume
m=9.1*10^-31;   //mass in kg
h=6.626*10^-34;
A=(8*m)^(3/2);
B=%pi/(2*h^3);
EfeV=3.10;    //fermi energy in eV
Ef=EfeV*1.6*10^-19;    //fermi energy in J
EFeV=EfeV+0.02;    //energy after interval in eV
EF=EFeV*1.6*10^-19;    //energy after interval in J
function Q=f(E),Q=A*B*sqrt(E),endfunction
I=intg(Ef,EF,f)
printf("number of energy states per unit volume is");
disp(I);
