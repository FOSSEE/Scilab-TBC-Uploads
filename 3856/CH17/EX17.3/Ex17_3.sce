//Calculate the Magnetic field that corresponds to a precession frequency of 400 MHz 

//Example 17.3

clc;

clear;

new=400*10^6; //Precession Frequency of Hydrogen atom in s^-1

gyma=26.75*10^7; //Gyromagnetic Ratio for Hydrogen atom in T^-1 s^-1 (T=Tesla)

Bo=(2*%pi*new)/gyma; //Magnetic field strength in T

printf("Magnetic field = %.2f T",Bo); 
