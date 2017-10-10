//Example number 1.3, Page number 10
clc;clear;
close;

//Variable declaration
e=1.6*10**-19;      //charge(coulomb)
epsilon0=8.85*10**-12;   
r0=0.314*10**-9;    //equilibrium distance(m)
A=1.75;      //madelung constant
N=5.77;     //born constant
I=4.1;    //ionisation energy(eV)
EA=3.6;   //electron affinity(eV)

//Calculation
V=-A*e**2*((N-1)/N)/(4*e*%pi*epsilon0*r0);
PE=V/2;    //potential energy per ion(eV)
x=(I-EA)/2;
CE=PE+x;   //cohesive energy(eV)

//Result
printf( "cohesive energy is = %.3f eV",CE)
