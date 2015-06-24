//Ex:9.3
clc;
clear;
close;
e_c=1;// number of electron collected
p=3;// number of photon incident
n=e_c/p;// quantum efficiency
e=1.602*10^-19;// charge
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=0.8*10^-6// wavelength in m
Eg=(h*c)/y;// band gap energy in J
R=(n*e*y)/(h*c);// responsivity in A/W
Po=10^-7;// in W
Ip=R*Po;// output photo current
printf("The quantum efficiency =%f %%", n*100);
printf("\n band gap energy =%f*10^-20 J", Eg*10^20);
printf("\n The output photo current =%f nA", Ip*10^9);