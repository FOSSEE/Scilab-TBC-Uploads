// Example 2.10.4  page 2.41

clc;
clear;

delta=1/100;      //relative index difference
n1=1.5;     //core refractive index
c=3d8;
L=6;

n2=sqrt(n1^2-2*delta*n1^2);      //computing refractive index of cladding
delta_T=L*n1^2*delta/(c*n2);    //computing pulse broadning
delta_T=delta_T*10^11;
delta_T=round(delta_T);
printf("\nDelay difference between slowest and fastest mode is %d ns/km.",delta_T);
printf("\nThis means that a pulse broadnes by %d ns after travel time a distance of %d km.",delta_T,L);

