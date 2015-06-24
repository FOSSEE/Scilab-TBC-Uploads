
//Example No.9.3.
//Page No.267.
clc;clear;
B = 0.5;//Magnetic field -[Wb/m^2].
I = 10^(-2);//Current -[A].
l = 100;//Length -[mm].
d = 1;//Thickness -[mm].
Rh = 3.66*10^(-4);//Hall coefficient -[m^3/C].
w = 10*10^(-3);//Breadth -[mm].
Vh = ((B*I*Rh)/w);//Hall voltage.
printf("\nThe Hall voltage is %3.3e V",Vh);
