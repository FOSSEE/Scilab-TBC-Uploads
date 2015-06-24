// Scilab Code Ex9.15: Page-9.46 ; (2004)
clc;clear;
e = 1.6e-19;    //  Electronic charge, C
RH = -7.35e-5;    // Hall coefficent, meter cube/C
sigma = 200; //  Conductivity of the Si specimen, per ohm per metre
n = -1/(RH*e);   // Electron density, per metre cube
mu = sigma/(n*e);    //  Mobility of the charge carriers, square meter per voly per sec
printf("\nElectron density = %3.3e per metre cube", n);
printf("\nMobility = %3.3f square meter per volt per sec", mu);
printf("\nAs the RH is negative, so specimen is n-type");

//Result
//  Electron density = 8.503e+22 per metre cube
//  Mobility = 0.015 square meter per volt per sec
//  As the RH is negative, so specimen is n-type  
