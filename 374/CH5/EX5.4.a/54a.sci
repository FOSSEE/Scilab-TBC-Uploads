//chapter 5 exmaple 4a//
clc
clear
//number of longitudnal modes=K,refractive index=n1,length of the cavity in the laser=L,wavelength of the device=l,seperation wavelength between two modes=dl//
K=1700;
n1=3.6;
l=0.85*(10^-6);//in mts//
L=((K*l)/(2*n1))*(10^6);
printf("\n length of the cavity in the laser=%f micro meters\n",L)
dl=((l^2)/(2*n1*L))*(10^15);//seperation wavelength between modes//
printf("\n seperation wavelength between modes=%f micro meters\n",dl)