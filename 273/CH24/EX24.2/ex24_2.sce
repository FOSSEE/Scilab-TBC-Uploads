clc;clear;
//Example 24.2
//calculation of acceptance angle

//given values
n=1.59;//cladding refractive index
u=1.33;//refractive index of water
N=.20;//numerical aperture offibre
//calculation
x=sqrt(N^2+n^2);//index of fibre
N1=sqrt(x^2-n^2)/u;//numerical aperture when fibre is in water
alpha=asin(N1)*180/%pi;
disp(alpha,'acceptance angle in degree is');