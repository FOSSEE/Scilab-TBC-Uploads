//Chapter 6, Example 6.9, page 245
clc

//Initialisation
d=5                                       //in dB
h=20                                      //Transmitter initial height

//Calculation
ht=h*10**(0.25)                           //Transmitter ultimate antenna height

//Results
printf("(1) Antenna Height = %.2f m",round(ht))
