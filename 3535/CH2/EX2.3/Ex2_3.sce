//Chapter 2, Example 2.3, Page 37
clc
clear
//maximum wavelength of light required to liberate photoelectrons 
A = 2.35 //eV
h = 4.136*10**-15 // eV/s^-1
c = 2.998*10**8 // m/s
v = A/h
w = c/v
printf("v-min = %e s^-1",v);
printf("\n Maximum wavelength = %f nm which corresponds to green",w*10**9);

//Answers may vary due to round off error
