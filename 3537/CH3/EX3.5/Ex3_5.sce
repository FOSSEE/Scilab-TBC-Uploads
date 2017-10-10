//Example 3_5
clc();
clear;
//To calculate the wavelength for half wave plate
t=0.9*10^-6                 //units in meters
u0=1.658
ue=1.486
lemda=(4*t*(u0-ue))
printf("Thickness of half wave plate is %.10f meters",lemda)
//To calculate the wavelength for half wave plate
lemda=(2*t*(u0-ue))*10^9
printf("\nThickness of half wave plate is %.1f mm",lemda)
