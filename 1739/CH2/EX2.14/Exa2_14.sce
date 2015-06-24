//Exa 2.14
clc;
clear;
close;
//Given data :
N=700;//No. of modes
d=30;//in um
a=d/2;//in um
NA=0.62;//Numerical Aperture
//Formula : v=2*sqrt(N) and v=2*%pi*a*NA/lambda
lambda=2*%pi*a*NA/(2*sqrt(N));//in um
disp(lambda,"Wavelength of light propagating in fibre in micro meter : ");