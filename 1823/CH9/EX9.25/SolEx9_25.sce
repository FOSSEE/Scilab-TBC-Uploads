//Use SPICE methods to simulate this amplifier
//Example 9.25 page no 281
clear
clc
R1=10*10^3  //Ω
R2=20*10^3  //Ω
R3=20*10^3  //Ω
Av=-((R2*R3)/(R1*(R2+R3)))
printf("\n The value of Av=%0.3f  ",Av)
