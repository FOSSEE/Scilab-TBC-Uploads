

//page no. 31
//Example no 1-15
//E=h*v=h*c/l;
clc;
clear;
E=3;       //In KeV
//1eV=1.6*10^-19
h=6.63*10^-34;  //plank constant in J/s
c=3*10^8;           // speed of light in m/s
l=h*c/(E*10^3*1.6*10^-19);// wavelength  in nm
printf("wavelength of a electromagnetic radiation is %0.3f nm",l*10^9);//result

