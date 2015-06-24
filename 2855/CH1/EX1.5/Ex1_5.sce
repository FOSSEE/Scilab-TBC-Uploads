//Ex1_5
//given 
//page no 11
clc;
clear;
c=3*10^8;
disp('Solution (i) is ');
ri=1.5;//refractive index
u=830// in nm
l=u/ri;      //in nm
printf("\n Wavelength is %0.0f nm \n",l);
disp('Solution (ii) is ');
l=round(l);                 // rounding to nearest integer
f=c/(l*10^-9)*10^-12;       //in THz
printf("\n  frequency is %0.0f THz\n",f);
disp('Solution (iii) is ');
f=round(f);                 // rounding to nearest integer
v=l*10^-9*f*10^12;          //in m/s
mprintf("\n  phase velocity  is %.3e m/s\n",v);//answer is getting rounding off due to larger calculation


