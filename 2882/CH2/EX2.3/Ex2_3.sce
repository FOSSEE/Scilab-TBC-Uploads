//Tested on Windows 7 Ultimate 32-bit
//Chapter 2 Fundamental Concepts: Energy Bands in Solids Pg no. 50
clear;
clc;

//Given Data
m0=9.1D-31;//mass of electron in kg
e=1.602D-19;//charge on a electron in Coulombs
V1=100;//Accelerating potential difference in volts for case (i)
V2=500;//Accelerating potential difference in volts for case (ii)

//Solution
disp('case (i)')

KE1=e*V1;//Kinetic Energy  of electron in Joules
KE2=KE1/(1.6D-19);//Converting it into electron volts eV
v=sqrt(2*KE1/m0);//Velocity of electron in meters per second

printf("The Kinetic energy for V=%d volts is \n",V1);
printf("K.E.=%.3e Joules \nK.E.=%d eV\n",KE1,KE2);
printf("The corresponding velocity is %.2e m/sec\n",v);

disp('case (ii)')

KE1=e*V2;//Kinetic Energy  of electron in Joules
KE2=KE1/(1.6D-19);//Converting it into electron volts eV
v=sqrt(2*KE1/m0);//Velocity of electron in meters per second

printf("The Kinetic energy for V=%d volts is \n",V1);
printf("K.E.=%.3e Joules \nK.E.=%d eV\n",KE1,KE2);
printf("The corresponding velocity is %.2e m/sec\n",v);

//Decimal errors with respect to textbook due to approximations
