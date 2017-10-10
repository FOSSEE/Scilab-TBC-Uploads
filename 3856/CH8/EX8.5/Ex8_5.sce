//Calculate the force in Newtons between a pair of Sodium positive ion and Chloride negative ion in vacuum and in water 

//Example 8.5 

clc;

clear;

QNa=1.602*10^-19;  //Charge on the Na ion in C

QCl=-1.602*10^-19;  //Charge on the Cl ion in C

Epsio=8.854*10^-12;  //Permittivity of the vacuum in C^2 N^-1 m^-2

r=1*10^-9;  //Distance between ions in m

F1=(QNa*QCl)/((4*%pi*Epsio)*(r)^2);  //Force in between a pair of ion in N

printf("(a)Force Between ions in vacuum = %.2f*10^-10 N",F1*10^10);

Epsi=78.54;  //Dielectric constant of water
 
F2=(QNa*QCl)/((4*%pi*Epsio*Epsi)*(r)^2);  //Force in between a pair of ion in water in N

printf("\n(b)Force between ions in water = %.2f*10^-12 N",F2*10^12);
