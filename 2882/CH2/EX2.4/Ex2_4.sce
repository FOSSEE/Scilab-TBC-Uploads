//Tested on Windows 7 Ultimate 32-bit
//Chapter 2 Fundamental Concepts: Energy Bands in Solids Pg no. 50
clear;
clc;

//Given Data
m0=9.1D-31;//mass of electron in kg
e=1.602D-19;//charge on a electron in Coulombs
V=5000;//Accelerating potential difference in volts for case (ii)
m=3674*m0;//mass of positively charged particle in kg;
q=2*e;//charge of positively charged particle in Coulombs;


//Solution


KE1=q*V;//Kinetic Energy  of positively charged particle in Joules
KE2=KE1/(1.6D-19);//Converting it into electron volts eV

v=sqrt(2*KE1/m);//Velocity of positively charged particle in meters per second
v=v/1000;//Converting it into kilometers per second

printf("The Kinetic energy is %d eV\n",KE2);
printf("The corresponding velocity is %d km/sec\n",v);

//Error in kinetic energy due to approximations of decimals in textbook
