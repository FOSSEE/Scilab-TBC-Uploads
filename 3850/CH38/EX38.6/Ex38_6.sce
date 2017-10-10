
//To Calculate the Current in Circuit

//Example 38.6

clear;

clc;

E=10;//EMF of Battery in Volts

R=100;//Resistance in ohms

i0=E/R;//Initial Current in Amperes

L=20*10^-3;//Self Inductance of Inductor in Henry

tau=L/R;//Time Constant of L-R Circuit

t=1*10^-3;//Time after Short-Circuiting in seconds

i=i0*exp(-t/tau);//Current in the circuit 1 ms after short circuiting

printf("Current in the circuit 1 ms after Short Circuiting = %.1f*10^-4 A",i*10^4);
