//ques-25.8
//Calculating kinetic energy per molecule for Carbon dioxide
clc
Na=6.023*10^23;//(in molecules/mol)
T=273;//temperature (in K)
KE=(3*8.314*T)/(2*Na);
printf("The kinetic energy per molecule for carbon dioxide is %.2f*10^-21 J/molecule.",KE*10^21);
