

//Example No.6.15.
//Page No.191.
clc;clear;
r = 1.278*10^(-10),'m';
M = 63.54;//Atomic weight of copper.
Na = 6.022*10^(26);
d = 8980;//density
a = r*sqrt(8);//Interatomic distance.
printf("\n The interatomic distance is %3.3e m",a);
n = ((d*a^(3)*Na)/(M));//The number of atoms per unit cell.
printf("\n Number of atoms per Cu unit cell is %.f",n);

