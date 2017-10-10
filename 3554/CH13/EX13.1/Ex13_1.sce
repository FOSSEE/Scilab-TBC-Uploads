// Exa 13.1

clc;
clear all;

// Given data
// Refer circuit given in Fig no.13.2(b) given on page no.381

Shaft=3; // Shaft stroke in inches
Wiper=0.9;// in inches
R=5; // Total resistance(R1+R2) in K ohms
Vt=5; // Applied voltage in volts

// Solution

R2=Wiper/Shaft * R ;// in k Ohms
// Since Vo/Vt=R2/(R1+R2);
// Therefore
Vo=R2/(R) *Vt; // Output Voltage(R1+R2)
printf(' The output voltage = %.1f V \n',Vo);
