clc;
clear;
lambda=5890*10^-8 //wavelength in cm
k1=1 //first order of wavelength
k2=2 //second order of wavelength
N=425 // grating lines per cm
d_lambda=(5896 - 5890)*10^-8 //grating width in cm
d=2 //grating width in cm

//calculation
Total_lines = N*2 //Total no. of lines on the grating 

//for the first order
N1=ceil(lambda/(k1*d_lambda)) //No. of grating lines 

//for the second order
N2=ceil(lambda/(k2*d_lambda)) //No. of grating lines 


printf("\nAs the total number of lines required for the just resolution in the first order is %d and the total number of lines on the grating is %d, the lines will not be resolved\n",N1,Total_lines) 
printf("\nAs the total number of lines required is %d and the given grating has a total of %d lines, the lines will appear resolved in second order\n",N2,Total_lines) 
