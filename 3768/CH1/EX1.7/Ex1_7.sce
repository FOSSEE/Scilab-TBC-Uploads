//Example number 1.7, Page number 12

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;      //charge(coulomb)
epsilon0=8.85*10**-12;   
r=0.5*10**-9;    //distance(m)
I=5;    //ionisation energy(eV)
E=4;   //electron affinity(eV)

//Calculation
C=e**2/(4*%pi*epsilon0*e*r);    //coulomb energy(eV)
Er=I-E-C;    //energy required(eV)

//Result
printf( "energy required is %.1f eV",Er)

