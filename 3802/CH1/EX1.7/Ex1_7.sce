//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_7.sce

clc;
clear;
printf("\n  From the given plots the waveform of voltage is the time integral of the current wave.So the electric device must be capacitor\n")

t=2;         //time in seconds
V=100;        //voltage of elecric device(capacitor) in volts
I=5;          //capacitance (electric devce) current in amphere
C=(I*t)/V;
printf("\n  So the value of capacitance=%1.1f farads",C)
