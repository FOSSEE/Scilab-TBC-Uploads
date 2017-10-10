//Example 1_43
clc();
clear;
//To find the thickness of the soap film
lemda=7000                    //units in angstroam
lemda=7000*10^-8             //units in cm
u=1.33
n=2
t=(((2*n)+1)*(lemda/2))/(2*u)
printf("Thickness of the soap film is %.8f cm",t)
