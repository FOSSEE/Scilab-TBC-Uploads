clc;clear;
//Example 7.4
//nonreflecting film

//given values
l=5500*10^-10;//wavelength of light
n1=1.33;//refractive index of water
n2=1.52;//refractive index of glass window pane
x=sqrt(n1);//to check if it is nonreflecting

 //calculation
t=l/(4*n1);//thickness of water film required
disp(t*10^6,'minimum thickness of film (in metre) is');