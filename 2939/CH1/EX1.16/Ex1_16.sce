
//Ex1_16

clc;

//Given:
e=200; //MeV/ atom of U
// 1 eV = 1.6*10^-19 J
Na=6.023*10^23;
M=0.235; // mass in Kg

//solution:

e1=e*1.6*10^-19*10^6;
A=Na/M;
e2=A*e1; // energy released in MJ/day
e3=e2/(24*3600);
printf("\n The rate of energy release in W is %f ",e3)




