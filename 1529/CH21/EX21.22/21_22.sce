//Chapter 21, Problem 22
clc;
R1=112;                     //equivalent input resistance
Rl=7;                       //load resistance
N=sqrt(R1/Rl);              //turns ratio
printf("Optimum turns ratio = %d : 1 ",N);
