
//To Calculate the Magnitude of the Earth's Magnetic Field

//Example 36.5

clear;

clc;

Bh=3.6*10^-5;//Horizontal component of Earth's Magnetic Field in Tesla

theta=%pi/3;//Dip Angle in radians

B=Bh/cos(theta);//Resultant Magnetic Field

printf("Magnitude of the Earth magnetic field = %.1f*10^-5 T",B*10^5);
