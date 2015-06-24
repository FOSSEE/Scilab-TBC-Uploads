//Chapter 11
//page no 386
//given
clc;
clear all;
q=4.9*10^-18;           //in m/W.GHz raman  gain slope
f=100;                  //in GHz
A=50*10^-6;             //cross sectional area in micro  meter square
P0=3.5;           //in mW
Le=10*10^3;
G=q*f*10^6/2/A;
N=20;
mprintf("\n G = %e ",G);
CT=N*(N-1)*(P0*10^-3*G*Le)/2;
printf("\n CT(L) = %0.2f ",CT);
