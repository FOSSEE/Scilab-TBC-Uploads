close();
clear;
clc;
//resistance of moving coil voltmeter 'R', potential difference across terminals 'V', dimensions of moving coil 'l*d', number of turns 'N', flux density in gap 'B', final deflection 'theta'
R = 200; //ohm
V = 100*10^(-3); //V
l = 30*10^(-3); //m
d = 25*10^(-3); //m
N = 100;
B = 0.2; //Wb/m^2
theta = 100; //degree 
//current in instrument for full scale deflection 'I'
I = V/R; //A
//control constant of spring 'K2'
K2 = N*B*l*d*I/theta; //Nm/degree
mprintf("Control constant of spring, K2 = %0.1e Nn/degree",K2);