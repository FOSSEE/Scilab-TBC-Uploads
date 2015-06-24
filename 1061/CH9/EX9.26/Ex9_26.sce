//Ex:9.26
clc;
clear;
close;
e_c=2*10^10;// number of electron collected
p=5*10^10;// number of photon incident
n=e_c/p;// quantum efficiency
e=1.602*10^-19;// charge
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=0.85*10^-6;// wavelength in m
y1=0.85;// wavelength in um
Eg=(h*c)/y;//  bandgap energy in J
Eg1=1.24/y1;// bandgap energy in terms of eV
Po=10*10^-6;// incident power in W
Ip=(n*e*Po)/Eg;// mean output photocurrent in A
printf("The quantum efficiency =%d %%", n*100);
printf("\n The bandgap energy =%f*10^-19 J", Eg*10^19);
printf("\n The bandgap energy =%f eV", Eg1);
printf("\n The mean output photocurrent =%f uA", Ip*10^6);