// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_1
clc; clear;
// For the diode circuit, calculate the ac resistance, rac, for the following values of R: (a) 10 kOhms, (b) 5 kOhms, and (c) 1 kOhms. Use the second approximation of a diode.

// Given data

R1 = 10*10^3;     // Resistance 1=10 kOhms
R2 = 5*10^3;      // Resistance 2=5 kOhms
R3 = 1*10^3;      // Resistance 3=1 kOhms
Vdc = 10;         // DC supply=10 Volts
V = 0.7;          // Starting voltage of diode=0.7 Volts
A = 25*10^-3;     // Constant

// For R=10 kOhms

Id1 = (Vdc-V)/R1;

rac1 = A/Id1;
disp (rac1,'The Ac Resistance with R=10 kOhms in Ohms')

// For R=5 kOhms

Id2 = (Vdc-V)/R2;

rac2 = A/Id2;
disp (rac2,'The Ac Resistance with R=5 kOhms in Ohms')

// For R=1 kOhms

Id3 = (Vdc-V)/R3;

rac3 = A/Id3;
disp (rac3,'The Ac Resistance with R=1 kOhms in Ohms')
disp ('Appox 2.69 Ohms')


