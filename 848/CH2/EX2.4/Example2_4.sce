//clear//
//Caption:Power flow in the core and cladding of step-index fiber 
//Example 2.4
//page 62
clear;
close;
clc;
V = [22,39];
M =V^2/2;
Pcladd_P = (4/3)*(M.^(-0.5));
Pcore_P = 1- Pcladd_P;
disp(M,'Total number of modes')
disp(Pcladd_P*100,'Percentage of power propagates in the cladding')
//Result
// Total number of modes   
//     242.    760.5  
// Percentage of power propagates in the cladding   
//     8.5709913    4.8349182  
