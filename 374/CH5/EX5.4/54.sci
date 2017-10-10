//chapter 5 example 4//
clc
clear
//length of cavity=L,refractive index of GaAs=n1,wavelength=l,seperation wavelength between two mode=dl//
n1=3.6;//refractive index//
l=0.85*(10^-6);//wavelength//
L=200*(10^-6);//length of cavity//
dl=(l^2)/(2*n1*L)*(10^9);//seperation wavelength between two mode//
printf("\n seperation wavelength between two mode=%f nm\n",dl)