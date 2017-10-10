clear;
clc;
printf("\nEx2.42\n");
//page no.-87
//given
theta=90;................//angle in degrees
h=6.62*10^-34;..........//planck's constant in J-sec
m=9.1*10^-31;.........//mass of electron 
c=3*10^8;..............//speed of light in m/s
e=1.6*10^-19;..........//charge
lambda=10^-10;........//wavelength in m
//acc. to compton exp.,_lambda-lambda=(h*(1-cosd(theta)))/m*c

del_lambda=((h*(1-cosd(theta)))/(m*c)).........//compton shift in m

K=(h*c*del_lambda)/(lambda*(lambda+del_lambda))......//energy in joule

printf("\nKinetic energy of recoil electron is 4.72*10^-17 joule\n");
