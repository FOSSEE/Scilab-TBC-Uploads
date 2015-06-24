// Example 1.7.5 page 1.16
// Will total internal reflection take place?

clc;
clear;

n1 = 3.6;      // RI of GaAs..
n2 = 3.4;      // RI of AlGaAs..
phi1 = 80;     // Angle of Incidence..
// According to Snell's law...
// n1*sin(phi1)= n2*sin(phi2);
//At critical angle phi2 = 90...
phiC = asind((n2/n1)*sind(90));
printf('The Critical angel is  %.2f degrees',phiC);
printf('\n\nFor total internal reflection to take place angle\n of incidence should be greater than the critical angle. \nFrom the calculations, we can thus conclude that Total internal reflection will take place');
