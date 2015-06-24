//clear//
//Caption: External Quantum Efficiency in percentage
//Example 4.6
//page151
clear;
close;
clc;
n = 3.5; //refractive index of an LED
Etta_External = 1/(n*(n+1)^2);
disp(Etta_External*100,'External Efficiency in percentage')
//Result
//External Efficiency in percentage    1.4109347  
