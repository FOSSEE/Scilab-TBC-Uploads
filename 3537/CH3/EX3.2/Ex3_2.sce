//Example 3_2
clc();
clear;
//To calculate the thickness of the quarter wave plate for sodium light
lemda=589*10^-9                      //units in meters
ue=1.553
u0=1.544
t=lemda/(4*(ue-u0))
printf("Thickness of quartz half wave plate is %f mm",t)
