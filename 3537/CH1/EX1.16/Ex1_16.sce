//Example 1_16
clc();
clear;
//To find the wavelength in the visible region
u=1.33
t=500                    //units in angstroam
t=500*10^-10             //units in mts
n=0                     //when n=0
lemda1=(4*u*t)/((2*n)+1)
printf("when n=0 then lemda1 is %.11f mts",lemda1)
n=1                    //when n=1
lemda2=(4*u*t)/((2*n)+1)
printf("\nwhen n=1 then lemda2 is %.11f mts",lemda2)
n=2                    //when n=1
lemda3=(4*u*t)/((2*n)+1)
printf("\n when n=2 then lemda3 is %.11f mts",lemda3)
n=3                   //when n=1
lemda4=(4*u*t)/((2*n)+1)
printf("\n when n=3 then lemda4 is %.11f mts",lemda4)
printf("\n Of all the wavelengths reflected in the visible region is %.11f mts",lemda3)
