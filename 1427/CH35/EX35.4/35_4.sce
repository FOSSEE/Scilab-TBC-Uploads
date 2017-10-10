//ques-35.4
//Calculating reduced mass of CN molecule
clc
C=12.011;//atomic weight of C (in amu)
N=14.0067;//atomic weight of N (in amu)
r_m=(C*N)/((C+N)*6.023*10^23);
printf("The reduced mass of CN molecule is %.4f*10^-26 kg.",r_m*10^23);
