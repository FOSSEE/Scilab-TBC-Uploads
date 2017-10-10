
//To Calculate the Number of Turns in the Primary Coil

//Example 39.5

clear;

clc;

E1=220;//Input Voltage to the Transformer in Volts

E2=6;//Output Voltage by the Transformer in Volts

N2=18;//Number of Turns in the Secondary Coil

N1=(E1/E2)*N2;//Number of Turns in the Primary Coil

printf("Number of turns in the primary coil = %.0f",N1);
