clc();
clear;
// To calculate the energy band gap
k=8.616*10^-5;
T1=20;    //temp in C
T1=T1+273;    //temp in K
T2=32;     //temp in C
T2=T2+273;    //temp in K
rho2=4.5;    //resistivity in ohm m
rho1=2;    //resistivity in ohm m
dy=log10(rho2)-log10(rho1);
dx=(1/T1)-(1/T2);
Eg=2*k*dy/dx;
printf("energy band gap is %f eV",Eg);
