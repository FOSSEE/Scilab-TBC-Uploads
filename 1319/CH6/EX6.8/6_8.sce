// Speed calculation of series motor

clc;
clear;

N1=800;// Speed in Case 1
Ra=1;
I=15;
V=200;
Rs=5; // Series resistance

Eb1=V-(I*Ra);// Back Emf in Case 1
Eb2=V-(I*(Ra+Rs));// Back Emf in case 2

//Speed directly proportional to EMF

N2=Eb2*N1/Eb1;

printf("The speed of the motor when connected in series to a resistance of 5 ohms = %g rpm \n",N2)
