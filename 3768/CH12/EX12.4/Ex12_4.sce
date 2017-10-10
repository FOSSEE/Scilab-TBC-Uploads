//Example number 12.4, Page number 264

clc;clear;
close;

//Variable declaration
n1=1.563;          //Core refractive index
n2=1.498;          //Cladding refractive index
//Calculation
NA=sqrt(n1**2-n2**2);    //numerical aperture
theta0=asin(NA);    //acceptance angle(radian)
theta0=theta0*180/%pi;    //acceptance angle(degrees)
//Resul"
printf("acceptance angle is %.2f degree",theta0)
