clc();
clear;
//Given :
n1 = 1.5025; // refractive index of core
n2 = 1.4975; // refractive index of cladding
L = 1; // length in m
F = 2*10^6; // frequency in Hz
c = 3*10^8;// light speed in m/s
delta_t = (n1*L/c)*((n1/n2)-1);// maximum delay in s;
f = 1/(2*delta_t); // bandwidth for 1 m propogation
L1 = 1/(2*F*delta_t); // distance for 2MHz bandwidth
printf("Maximum delay = %.1f ps \n",delta_t*10^12);
printf("Bandwidth of 2MHz can propogate a distance of %.1f  km ",L1*10^-3);
