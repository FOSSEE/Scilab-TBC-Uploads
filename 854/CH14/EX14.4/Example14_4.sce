//clear//
//Caption:Program to determine the operating range of frequency for TE10 mode of air filled rectangular waveguide
//Example14.4
//page 509
clear;
clc;
 //dimensions of air filled rectangular waveguide
a = 2e-02;
b = 1e-02;
//Free space velocity in m/sec
C = 3e08;
//the value of m for TE10 mode
m = 1;
n = 1;//refractive index for air filled waveguide
fc = (m*C)/(2*n*a);
disp(fc*1e-09,'Operating range of frequency for TE10 mode in GHz fc=')
//Result
//Operating range of frequency for TE10 mode in GHz fc=   
//     7.5 
