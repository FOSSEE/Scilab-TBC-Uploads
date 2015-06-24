//clc();
clear;
//To determine the wavelength
Eg=1.43*1.602*10^-19;        //band gap energy in J
T=300;                       //temperature in K
h=6.626*10^-34;
c=3*10^8;
lambda=(h*c)/Eg;
disp(lambda);
lambda=lambda*10^6;        //converting into micrometre
printf("the GaAs photodetector will cease to operate above in micrometre is");
disp(lambda);
