//example 7.14

clear;
clc

//Given:
T=298;//Temperature[K]
I=1.9373*10^-46;//moment of inertia of O2 gas [Kg/m2]
h=6.626*10^-34;//Planck's constant[J.s]
k=1.381*10^-23;//Boltzmann constant[J/K]
R=8.314;//Universal gas constant[J/K/mol]
u=2;//Homonuclear diatomic molecule


//To find the rotational entropy and free energy for O2 gas
Sr=R+R*log(8*3.14*3.14*I*k*T/(u*h*h));//[J/K/mol]
Gr=-R*0.001*T*log(8*3.14*3.14*I*k*T/(u*h*h));//[KJ/mol]
printf("The rotational entropy for O2 gas is %f J/K/mol",Sr);
printf("\nThe rotational free energy for O2 gas is %f KJ/mol",Gr);
