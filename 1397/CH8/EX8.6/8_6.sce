//clc();
clear;
//To calculate numerical aperture and acceptance angle
n1=1.6;        //refractive index of core
n2=1.4;        //refractive index of cladding
n0=1.33;       //water refractive index
NA=sqrt(n1^2-n2^2)/n0;
printf("numerical aperture is %f",NA);
theta0=asind(NA);
printf("acceptance angle is %f degrees",theta0);
