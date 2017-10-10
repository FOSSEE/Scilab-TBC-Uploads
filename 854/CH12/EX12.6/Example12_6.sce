//clear//
//Caption:Program to find skin depth, loss tangent and phase velocity
//Example12.6
//page419
clc;
clear
f1 = 10^6; //frequency in Hz
//er1 = 81;
ur = 1;
eo = 8.854187*10^-12;
uo = 4*%pi*10^-7;
sigma = 4;//conductivity of a conductor in s/m
del = 1/sqrt(%pi*f1*uo*sigma);
pi = %pi;
Lambda = 2*pi*del;
Vp = 2*pi*f1*del;
disp(del*100,'skin depth in cm delta =')
disp(Lambda,'Wavelength in metre Lambda =')
disp(Vp,'Phase velocity in m/sec Vp =')
//Result
//skin depth in cm delta =   
//     25.17737  
//Wavelength in metre Lambda =   
//    1.5825775  
//Phase velocity in m/sec Vp =   
//    1582577.5