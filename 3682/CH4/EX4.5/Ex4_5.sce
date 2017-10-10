// Exa 4.5

clc;
clear;

// Given data

App = 20; // peak gain in dB
A = 17; // Actual gain in dB
w = 10000; // Angular Frequancy in rad/sec
C = 0.01*10^-6; // Farads

// Solution

printf('From Eq.(4.84) , we see  that gain is at its peak when w = 0.\n Therefore, 20*log(Rf/R1) = 20.\n');

// Therefore,
// Rf = 10 R1;   ............Eq. (1)
z = 10;  // z is ratio of Rf/R1
printf(' i.e Rf/R1 = %d. \n',z );
printf(' At w = 10^4 rad/sec, gain in dB is down from its peak of 20 dB. \n Therefore, convering gain to dB in Eq.(4.84) and sub    situting for w,C, and Rf/R1 we can get value of Rf.\n\n');
//  20*log10               10                = 17 dB
 //          --------------------------
 //          sqrt(1 + [10^4*10^-8*Rf]^2)
 
deff('y=f(x)','y = 20*log10( 10 / sqrt(1+[10^-4*x]^2))-17');// x is Rf(Ω)
    [x,v,info] = fsolve(10,f);
    printf(' The calculated value of Rf is %d Ω. Rounding off to nearest possible value i.e 10 kΩ. \n',x); 
    Rf = 10000; // Ω
    printf(' Since we have ratio of Rf  by R1 so, \n The value of R1 can be given as R1 = %d kΩ. \n',0.1*(Rf/1000)); //as R1/Rf = 0.1
    
