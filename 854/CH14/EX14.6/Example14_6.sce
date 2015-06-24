//clear//
//Caption:Program to find the V number of a step index fiber
//Example14.6
//page 524
clear;
clc;
Lambda = 1.55e-06; //operating wavelength in metre
LambdaC = 1.2e-06; //cutoff wavelength in metre
V = (LambdaC/Lambda)*2.405;
disp(V,'the V number of a step index fiber V=')
//Result
//the V number of a step index fiber V=   
//      1.8619355  
