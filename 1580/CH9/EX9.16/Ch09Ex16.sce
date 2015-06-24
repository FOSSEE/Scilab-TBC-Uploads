// Scilab Code Ex9.16: Page-9.47 ; (2004)
clc;clear;
e = 1.6e-19;    //  Electronic charge, C
B = 1.5;  // Magnetic field, tesla
I = 50; //  Current, ampere
n = 8.4e+28;    // Electron density, per metre cube
t = 0.5e-2; //  thickness of slab, metre
RH = 1/(n*e);   // Hall coefficent
V_H = RH*I*B/t;    //  Hall voltage, volt 
printf("\nHall Voltage = %3.3f micro volt", V_H/1e-6);

//Result
//  Hall Voltage = 1.116 micro volt 
