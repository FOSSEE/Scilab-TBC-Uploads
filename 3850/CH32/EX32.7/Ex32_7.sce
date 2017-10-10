
//Find the value of Resistance

//Example 32.7

clear;

clc;

R1=10;//Resistance(R1) of Wheatstone Bridge Circuit

R2=20;//Resistance(R2) of Wheatstone Bridge Circuit

R4=40;//Resistance(R4) of Wheatstone Bridge Circuit

R3=R1*R4/R2;//formula for finding the wheatstone bridge resistance (R3)

printf("Resistance(R) = %d ohms for zero current in the 50 ohms resistor",R3);
