//Example 1_27
clc();
clear;
//To find the wavelength in the visible region
t=5000                         //units in angstroam
t=5000*10^-10                 //units in mts
u=1.33
n=0                       //let us take n=0
lemda=(4*u*t)/(2*n+1)
printf("The wavelength in the infrared region is %.10f",lemda)
n=1                      //let us take n=1
lemda1=(4*u*t)/(2*n+1)
printf("\n The wavelength in the IR region is %.10f",lemda1)
n=2                     //let us take n=2
lemda3=(4*u*t)/(2*n+1)
printf("\n The wavelength in the visible region is %.10f",lemda3)
n=3                   //let us take n=3
lemda4=(4*u*t)/(2*n+1)
printf("\n The wavelength in the UV region is %.10f",lemda4)
printf("\n\n In all wavelengths reflacted The wavelength in the visible region %.10f",lemda3)
