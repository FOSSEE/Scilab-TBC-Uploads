
//page no. 31
//Example no 1-16
clc;
clear;
disp('Solution (i) is ');
l=670//in nm
h=6.63*10^-34;  // plank constant in J/s
c=3*10^17//speed of light in nm/sec
Ek=0.75//In eV
phi=(h*c/l)/(1.6*10^-19) -Ek;
phi=round(phi*10)/10;           //round to 1 decimal point
printf("\n Characteristic of material = %0.1f eV\n",phi);//result
disp('Solution (ii) is ');
fc=phi*1.6*10^-19/h*10^-12;// frequency in THz//result
fc=round(fc);
printf("\n Cuttoff frequency is = %0.0f THz\n",fc);//result
lc=c/(fc*10^12);       //in nm
printf("\n Cuttoff wavelength is = %0.0f nm\n",lc);//result
