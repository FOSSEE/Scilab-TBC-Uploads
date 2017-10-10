
//To Calculate the Energy Stored in the Inductor

//Example 38.7

clear;

clc;

L=50*10^-3;//Self Inductance of Inductor in Henry

i=2;//Cuurent passed through inductor in Amperes

U=0.5*L*i^2;//Energy stored in the Inductor

printf("Energy stored in the inductor = %.2f J",U);
