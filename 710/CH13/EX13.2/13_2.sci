clc();
clear;
//To determine acceptance angle
NA=0.5;                              //numerical aperture of fibre 
n0=1;                                //refractive index of the medium (air) from which ray enters the fibre
//NA=n0*sin(i)where i is the acceptance angle.
i=asind(NA/n0)                      //acceptance angle in degrees
printf("The acceptance angle is %d degrees",i);