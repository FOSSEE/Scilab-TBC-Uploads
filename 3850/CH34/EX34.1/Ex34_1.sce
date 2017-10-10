
//To Find the Force and Acceleration

//Example 34.1

clear;

clc;

q=1.6*10^-19;//Charge on a proton in Coloumbs

v=3.0*10^6;//Projected Speed of the Proton in m/s

B=2.0*10^-3;//Uniform magnetic field strength in Tesla

theta=%pi/2;//Angle between Magnetic Field and Velocity

F=q*v*B*sin(theta);//Force on the proton due to Magnetic Field

printf("Force on the proton = %f*10^-16 N",F*10^16);

m=1.67*10^-27;//Mass of a proton in kg

a=F/m;//Acceleration of the proton in m/s^2

printf("\n Acceleration of the proton=%f*10^11 m/s^2",a*10^-11);
