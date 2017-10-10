//Calculate the Partition function of the system

//Example 23.1

clc;

clear;

KB=1.381*10^-23; //Boltzmann's constant in J K^-1

T=300; //Temperature in K

g0=1; //Degeneracies for zero level 

g1=3; //Degeneracies for first level

g2=5; //Degeneracies for second level

e0=0; //Energy for zero level

e1=2.00*10^-21;  //Energy for first level in J

e2=8.00*10^-21; //Energy for second level in J

q=g0*exp((-e0)/(KB*T))+g1*exp((-e1)/(KB*T))+g2*exp((-e2)/(KB*T));  //Partition function of the system (The answer vary due to round off error )

printf("Partition function of the system = %.2f",q); 

