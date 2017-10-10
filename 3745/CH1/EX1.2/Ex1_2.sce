// Ex 2 Page 340

clc;clear;close;
// Given
t1=2; // mm 
t2=5; // mm 
t3=7; // mm 
eps1=3;// dielectric constant
eps2=4;// dielectric constant
eps3=6; // dielectric constant
eps0=1/36/%pi*10^-9; // dielectric constant
d=10/100 ;// m
V=1500 // V 
//E1*t1+E2*t2+E3*t3=V
//Voltage Gradients : 
// using eps1*E1=eps2*E2=eps3*E3
E1=V/(t1+(eps1/eps2)*t2+(eps1/eps3)*t3)// V/mm 
E1=E1*10 // V/cm
E2=eps1*E1/eps2 // V/cm
E3=eps1*E1/eps3 // V/cm
printf("Voltage Gradients :\n   for A : %.f V/cm\n   for B : %.f V/cm\n   for C : %.f V/cm",E1,E2,E3)

A = %pi*d^2
W1=1/2*eps0*eps1*E1^2*10^4*A*t1*10^-3; // J
W2=1/2*eps0*eps2*E2^2*10^4*A*t2*10^-3; // J
W3=1/2*eps0*eps3*E3^2*10^4*A*t3*10^-3; // J
W1=W1*10^6 ; // uJ
W2=W2*10^6 ; // uJ
W3=W3*10^6 ; // uJ
printf("\nEnergy stored :\n   for A : %.1f uJ\n   for B : %.1f uJ\n   for C : %.1f uJ",W1,W2,W3)


// Answer in the textbook are not accurate
