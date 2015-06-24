// Example 7.2.2  page 7.11

clc;
clear;

r=35d-6;        //radius
R=150;      //Lambertian emission pattern
NA=0.2;     //Numerical aperture
Pled= %pi^2*r^2*R*NA^2;
Pled=Pled*10^7;
printf("\nOptical power for larger core of 35 micrometer is %.3f mW.",Pled);
r1=25d-6;
Pled1=(r1/r)^2*Pled;
printf("\nOptical power for smaller core of 25 micrometer is %.2f mW.",Pled1);
