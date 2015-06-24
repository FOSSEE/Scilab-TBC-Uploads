//Ex:5.4
clc;
clear;
close;
fc1=2.5*10^6;// critical frequency in Hz of E layer
fc2=8.4*10^6;// critical frequency in Hz of F layer
Nmax1=fc1^2/81;// maximum electron concentration of E layer 
Nmax2=fc2^2/81;// maximum electron concentration of F layer 
printf("The maximum electron concentration of E layer = %f*10^11 per cubic meter", Nmax1/10^11);
printf("\n The maximum electron concentration of F layer = %f*10^11 per cubic meter", Nmax2/10^11);