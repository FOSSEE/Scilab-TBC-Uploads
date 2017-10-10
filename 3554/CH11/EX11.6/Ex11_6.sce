// Exa 11.6

clc;
clear all;

// Given data
f=2; // kHz
C3=100; // micro farads
R1=10; // k Ohms
R2=50; // k Ohms
R3=100; // k Ohms

// Solution

// Using equations 11.12(a) and 11.12(b) (page no. 321)to find values of Rx and Cx

Rx=R2*R3/R1;
Cx=R1/R2 *C3;

printf(' The equivalent circuit consist of  resistance Rx of %d K ohms \n  in series with a capacitor Cx of %d micro farads \n',Rx,Cx);
