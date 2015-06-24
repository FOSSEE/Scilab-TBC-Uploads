//clear//
//Caption:Program to determine the pulse width at the optical fiber output
//Example13.11
//page474
clear;
clc;
T = 10; //width of light pulse at the optical fiber input in pico secs
beta2 = 20; //dispersion in pico seconds square pre kilometre
z = 15; // length of optical fiber in kilometre
delta_t = beta2*z/T;
T1 = sqrt(T^2+delta_t^2);
disp(delta_t,'Pulse spread in pico seconds delta_t =')
disp(ceil(T1),'Output pulse width in pico seconds T1 =')
//Result
//Pulse spread in pico seconds delta_t =   
//     30.  
//Output pulse width in pico seconds T1 =   
//    32.  
