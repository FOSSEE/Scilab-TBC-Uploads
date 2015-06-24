//Ex:9.22
clc;
clear;
close;
e_c=1.2*10^11;// number of electron collected
p=2*10^11;// number of photon incident
n=e_c/p;// quantum efficiency
e=1.602*10^-19;// charge
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
E=1.5*10^-19;// energy in J
y=(h*c)/E// wavelength in m
R=(n*e*y)/(h*c);// responsivity in A/W
Ip=2.6*10^-6;// photocurrent in A
Po=Ip/R;// incident optical power in W
printf("The quantum efficiency =%d %%", n*100);
printf("\n The wavelength =%f um", y*10^6);
printf("\n The responsivity =%f Amp/Watt", R);
printf("\n The incident optical power =%f uW", Po*10^6);