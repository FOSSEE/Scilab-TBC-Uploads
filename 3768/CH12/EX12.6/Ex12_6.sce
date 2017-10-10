//Example number 12.6, Page number 265

clc;clear;
close;

//Variable declaration
n1=1.6;          //Core refractive index
n0=1.33;         //refractive index of air
n2=1.4;          //Cladding refractive index
//Calculation
NA=sqrt(n1**2-n2**2)/n0;    //numerical aperture
theta0=asin(NA);    //acceptance angle(radian)
theta0=theta0*180/%pi;    //acceptance angle(degrees)
//Resul"
printf("acceptance angle is %.2f degree",theta0)
//answer in the book varies due to rounding off errors
