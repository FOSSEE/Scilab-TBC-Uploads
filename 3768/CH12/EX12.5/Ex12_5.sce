//Example number 12.5, Page number 265

clc;clear;
close;

//Variable declaration
n1=1.53;          //Core refractive index
n2=1.42;          //Cladding refractive index
//Calculation
thetac=asin(n2/n1);     //critical angle(radian)
thetac=thetac*180/%pi;    //critical angle(degrees)
//Resul"
printf("critical angle is %.2f degree",thetac)
