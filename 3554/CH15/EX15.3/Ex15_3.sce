// Exa 15.3

clc;
clear all;

// Given data

Fh= 2*10^3;// Cutoff frequency in Hz
	
// Solution

disp(" Let C2=C3=0.0033 micro farads ");

// Fh=1/(2*%pi*R*C); where R=R2=R3 and C2=C3=C;
C=0.0033*10^-6; // farads
// Therefore
R=1/(2*%pi*Fh*C);
printf('  Calculated value of R = %.1f K ohms. Let, R=R2=R3=22 k Ohms is selected\n',R/1000);
// Since Rf/R1=0.586, therefore Rf=0.586*R1;
// Let fix value of R1 as
R1=10*10^3; // Ohms
Rf=0.586*R1;
printf('  The remaining components after calculation comes out to be as Rf= %.2f k Ohms and R1= %d k Ohms \n',Rf/1000,R1/1000);
