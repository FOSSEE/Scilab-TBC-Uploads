clear
clc
//Example 12.2 MACH-NUMBER CALCULATION
z=13; //[km]
alpha=5.87; //[K/km]
To=296; //[K]
//Temperature at z
T=To-alpha*z //[K]
R=287; //[J/Kg.K]
k=1.4;
//Speed of sound
c=sqrt(k*R*T) //[m/s]
V=470; //speed of fighter[m/s]
//Mach number
M=V/c
printf("\n The Mach number of the aircraft, M = %.2f.\n",M)