clc();
clear;
//To determine the wavelengths absent in the reflected light
i=40;                                    //angle of incidence
mew=1.2;                                //refractive index
r=asind(sin(i)/mew);
t=0.23;                                //thickness of the film
lambda1=(2*mew*t*cosd(r))*10^3
lambda2=lambda1/2;
printf("The wavelength absent is %f nm",lambda1);