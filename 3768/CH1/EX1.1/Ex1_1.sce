//Example number 1.1, Page number 10
clc;clear;
close;

//Variable declaration
e=1.6*10**-19;      //charge(coulomb)
epsilon0=8.85*10**-12;   
r0=23.6*10**-10;    //equilibrium distance(m)
I=5.14;    //ionisation energy(eV)
EA=3.65;   //electron affinity(eV)
N=8;     //born constant

//Calculation
x=1-(1/N);
V=(e**2)*x/(4*e*%pi*epsilon0*r0);   //potential(V)
E=I-EA;        //net energy(eV)
BE=(V*10)-E;        //bond energy(eV)

//Result
printf( "bond energy = %.2f eV",BE)

