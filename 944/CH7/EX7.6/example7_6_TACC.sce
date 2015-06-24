//example 7.6

clear;
clc;


//section(1)
//Given:
//The energy levels are not degenerate 
w=1;//no. of ways of distributing the molecules
k=1.381*10^-23;//Boltzmann constant[J/K]
//To find the entropy of the system
S1=k*log(w);//Entropy of system at 0K
printf("The Entropy of System at 0K and non-degenerate eng level is %f J/K/mol",S1);

//section(2)
//Here the energy levels are degenerate
n=2;
R=8.314;//Universal gas constant[J/K/mol]

//To find the entropy of the system
//S=klog(n^N)=>S=R*log(n)
S2=R*log(n);//Entropy of the system[J/K/mol]
printf("\nThe Entropy of system at 0K and degenerete eng level is %f J/K/mol",S2);




