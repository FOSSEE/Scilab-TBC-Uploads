// Exa 5.1

clc;
clear all;

// Given data

R=100; //  in k Ohms
C=1;  //in micro farads
ei=1;// Applied voltage to integrator(V)
t1=1; // time in Sec

// Solution

// Using equation 5.1 from page no. 118
eo=ei*t1/(R*10^3*C*10^-6); // Output voltage from integrator
printf(' The voltage at output of integrator after 1 sec is = %d Volts \n',eo);

