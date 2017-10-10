clc;
clear;
lambda=5890*10^-8 //wavelength in cm
k=2
d_lambda=(5896 - 5890)*10^-8 //grating width in cm
d=2.5 //grating width in cm

//calculation
N=lambda/(k*d_lambda) //No. of grating lines 
No_of_lines = N/d

printf("No. of lines per cm = %1.1f",No_of_lines) // The answers vary due to round off error

