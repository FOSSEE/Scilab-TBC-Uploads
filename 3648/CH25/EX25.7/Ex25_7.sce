//Example 25_7
clc();
clear;
//To find the energy of the photon in a beam
h=6.626*10^-34     //units in J
c=3*10^8    //units in meters/sec
lamda=1240*10^-9    //units in meters
e=(h*c)/lamda     //units in J
e=e/(1.6*10^-19)       //Units in eV
printf("The energy of photon is E=%d eV",e)
