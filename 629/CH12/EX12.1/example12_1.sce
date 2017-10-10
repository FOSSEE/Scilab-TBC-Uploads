clear
clc
//Example 12.1 SPEED OF SOUND CALCULATION
R=287; //gas constant [J/Kg.K]
k=1.4;
T=15+273; //temperature [K]
//Speed of sound
c=sqrt(k*R*T) //[m/s]
printf("\n The speed of sound in air at 15°C, c = %.f m/s.\n",c)