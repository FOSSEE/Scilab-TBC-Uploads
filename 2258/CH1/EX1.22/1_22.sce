clc();
clear;
// To calculate the energies of electron
n2=2;    //second quantum state
n3=3;    //fourth quantum state
h=6.626*10^-34;
m=9.1*10^-31;   //mass in kg
a=1*10^-10;    //width of potential well in m
B=8*m*a^2;
E1=h^2/B;   //ground state energy
E1eV=E1/(1.6*10^-19);    //energy in eV
A=n2^2*h^2;
E2=A/B;    //energy in j
E2eV=E2/(1.6*10^-19);    //energy in eV
C=n3^2*h^2;
E3=C/B;    //energy in j
E3eV=E3/(1.6*10^-19);    //energy in eV
printf("ground state energy in Joule is");
disp(E1);
printf("ground state energy in eV is");
disp(E1eV);
printf("first energy state in eV is");
disp(E2eV);
printf("second energy state in eV is");
disp(E3eV);

//answers given in the book are wrong by one decimal
