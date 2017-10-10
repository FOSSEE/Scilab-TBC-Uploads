
//To Calculate the Shunt Resistance for Galvanometer

//Example 36.8

clear;

clc;

i=2;//Maximumm Current in Amperes

ig=20*10^-3;//Minimum current required for one full scale deflection in Galvanometer in Amperes

Rg=20;//Resistance of Galvanometer Coil in ohms

Rs=(ig*Rg)/(i-ig);//Shunt Resistance for Galvanometer in order to pass a maximum current of 2A 

printf("Shunt Resistance for Galvanometer in order to pass a maximum current of 2A = %.1f ohms",Rs);
