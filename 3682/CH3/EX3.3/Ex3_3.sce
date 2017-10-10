// Exa 3.3

clc;
clear;

// Given data

// A non-inverting amplifier
G=100;// Gain of amplifier at 25 degree celsius
T1 = 25; // degree celsius
T2 = 50; // degree celsius
VoT=0.15; // Offset voltage drift in mV/degreecelsius

// Solution

printf(' Input offset voltage due to temperature rise = ');
Vos=VoT*(T2-T1);
printf(' %.2f mV. \n ',Vos);
printf(' Due to this input change, the output voltage will change by ');
Vo=Vos*G;
printf( '%d mV. \n ',Vo);
printf(' This could represent a very major shift in the output voltage.');
