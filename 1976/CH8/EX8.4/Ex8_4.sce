
//To Calculate the Energy usedd in producing chemical action developed in an electrolytic cell
//Page 456
clc;
clear;

T=15/60; //Time Period of Operation in Hours
I=100; //Current in Amperes
V=15; //Potential Difference
R=0.05; //Resistance of Solution

NetEP=V-(I*R); //Net Electrode Potential

//Energy Equation, E = VIt.
Energy=NetEP*I*T/1000; // Energy in KiloWatts
printf('The Energy used in producing the chemical action developed in an electrolytic Cell for 15 mins is %g kWhr\n',Energy)
