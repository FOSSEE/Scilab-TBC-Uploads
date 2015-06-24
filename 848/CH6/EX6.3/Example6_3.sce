//clear//
//Caption:Calculation of photocurrent
//Example6.3
//page226
clear;
clc;
close;
R = 0.65; //Responsivity of photodiode
Pin = 10*(10^-6); //Optical power level in watts
Ip = R*Pin;
disp(Ip*10^6,'The amount of photocurrent generated in uA =')
//Result
//The amount of photocurrent generated in uA =  6.5  
