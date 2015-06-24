

//Example No.4.14.
//Page No.140.
//The mass of the particle.
clc;clear;
E = 0.025*1.6*10^(-19);//Lowest energy.
h = 6.626*10^(-34);//Planck's constant.
L = 100*10^(-10);//Width of the well -[m].
m = ((h^(2))/(8*E*L^(2)));
printf("\nThe mass of the particle is %3.3e kg",m);
