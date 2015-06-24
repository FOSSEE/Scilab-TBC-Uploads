//chapter 4
//example 4.9
//Show that given angles are successive order of difraction and find spacing constant
//page 79
clear;
clc;
//given
lambda=0.586; // in Angstrom (wavelength of X-rays)
n1=1, n2=2, n3=3; // orders of diffraction
theta1=5+(58/60); // in degree (Glancing angle for first order of diffraction)
theta2=12+(01/60); //in degree (Glancing angle for second order of diffraction)
theta3=18+(12/60); //in degree (Glancing angle for third order of diffraction)
//calculate
K1=sind(theta1);
K2=sind(theta2);
K3=sind(theta3);
printf('The value of sine of different angle of diffraction is\nK1=%.4f\nK2=%.4f\nK3=%.4f',K1,K2,K3);
// Taking the ratios of K1:K2:K3
// We get K1:K2:K3=1:2:3
//Therefore we have
printf('\n\nOr we have \tK1:K2:K3=1:2:3');
printf('\nHence these angles of incidence are for Ist, 2nd and 3rd order reflections respectively');
// Since 2dsin(theta)=n(lambda)
// therefore we have
d1=n1*lambda/(2*K1);
d2=n2*lambda/(2*K2);
d3=n3*lambda/(2*K3);
d1=d1*1E-10; //changing unit from Angstrom to m
d2=d2*1E-10; //changing unit from Angstrom to m
d3=d3*1E-10; //changing unit from Angstrom to m
printf('\n\nThe spacing constants are \nd1=%1.3E m\nd2=%1.3E m\nd3=%1.3E m',d1,d2,d3);
d=(d1+d2+d3)/3;
printf('\n\nThe mean value of crystal spacing is d=%1.3E m',d);
