//clear//
//Caption:Program to calculate time period and phase shift
//Example1.1
//Page 8
clear;
clc;
close;
f1 = 10^5; //f1 = 100KHz
f2 = 10^9; //f2 = 1GHz
T1 = 1/f1;
T2 = 1/f2;
phi = (1/4)*360;
phi_rad = phi/57.3;
disp(T1,'Time period of sine wave with frequency = 100 KHZ')
disp(T2,'Time period of sine wave with frequency = 1GHZ')
disp(phi,'phase shift in degrees');
disp(phi_rad,'phase shift in radians');
//Result
//Time period of sine wave with frequency = 100 KHZ   
//     0.00001  
//Time period of sine wave with frequency = 1GHZ   
//    1.000D-09  
//phase shift in degrees   
//    90.  
//phase shift in radians   
//    1.5706806  
