clc();
clear;
//To calculate the distance between atomic planes
//From Bragg's law 2*d*sin(teta)=n*lambda
n=1;
lambda=0.32;                        //wavelength in nm
teta=28;                            //angle at which first order Bragg's reflection is observed
d=lambda/(2*sind(28))
printf("The distance between atomic planes is %f nm",d);