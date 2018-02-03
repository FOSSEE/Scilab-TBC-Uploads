//=====================================================================================
//Chapter 16 example 13

clc;clear all;

//variable declaration
d   = 1;     //1 division is equal to 1 cm
M    = 0.4;   //mark in cm
S    = 1.6;   //mark in cm
A    = 2.15;   //amplitude in cm
t     = 10;    //time-base control setting in us
p     = 0.2;       //amplitude control setting 

//calcculations
R   = M/S;    //mark to space ratio 
T   = (M+S)*t;       //time for mark and space in divisions
f    = 1/T;    //pulse in frequency kHz
P    = A*p;            //magnitude of pule voltage in V

//Result
mprintf("mark-to-space ratio  = %3.2f",R);
mprintf("\npulse frequency = %3.2f kHz",f);
mprintf("\nmagnitude of pulse voltage = %3.2f V",P);


