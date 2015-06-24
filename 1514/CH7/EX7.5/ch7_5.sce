//chapter 7
//example 7.5
//page 203
clear all;
clc ;
//given
V1=1; //output voltage when signal frequency is 5khz in V
V2=0.707; //output voltage when signal frequency is 20khz in V

//change in output voltage in decibel
P=20* log10(V2/V1)
printf('change in output power in decibel=%d dB',P);
