
//To Find the Magnetic Field due to Magnetic Dipole

//Example 36.4

clear;

clc;

M=1.2;//Magnetic Moment of the Dipole in A-m^2

r=1;//Distance of point P from Magnetic Pole in metres

theta=%pi/3;//Angle made by given point with the Dipole Axis in radians

k=1*10^-7;//Constant (u0/(4*pi))

B=k*M*sqrt(1+3*(cos(theta))^2)/(r)^3;//Magnitude of Magnetic Field at the Given Point in Tesla

printf("Magnitude of Magnetic field at a point 1 metre from the Magnetic Dipole = %.1f*10^-7 T",B*10^7);

alpha=atan(tan(theta)/2)*180/%pi;//Angle made by magnetic field with the radial line

printf("\n Magnetic field makes an angle %.2f degrees with the radial line",alpha);
