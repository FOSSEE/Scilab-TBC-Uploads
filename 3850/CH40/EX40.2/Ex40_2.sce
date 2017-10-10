
//To Find the Maximum Magnetic Field in the wave and its Direction

//Example 40.2

clear;

clc;

E0=600;//Maximum Electric Field in a plane electromagnetic wave in N/C

c=3*10^8;//Speed of light in m/s

B0=E0/c;//Maximum Magnetic Field in Tesla

printf("The maximum Magnetic Field = %.0f*10^-6 T in the z direction",B0*10^6);
