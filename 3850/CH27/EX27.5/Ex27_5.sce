
//To Calculate the Internal Energy of 1 gram of oxygen at STP.

//Example 27.5

clc;

clear;

m=1;//Mass of Oxygen taken in grams

M=32;//Molecular Weight of Oxygen in g/mol

n=m/M;//Number of moles of Oxygen

R=8.31;//Universal Gas Constant in J/mol-K

T=273;//Temperature in Kelvin at STP

U=int(n*((5/2)*R*T));//Internal Energy of Oxygen

printf("Internal Energy of Oxygen=%d J",U);
