//clear//
//Caption:To find primary photocurrent and multiplication factor
//Example6.5
//page230
clear;
clc;
close;
etta = 0.65; //quantum efficiency of silicon qavalanche photodiode
C = 3*(10^8); //free space velocity in m/s
Lambda = 900e-09;//wavelength in meters
q = 1.6*(10^-19);//charge in coulombs
h = 6.625*(10^-34);//planks constant
v = C/Lambda; //frequnecy in Hz
Pin = 0.5*10^-06;//optical power
Ip = ((etta*q)/(h*v))*Pin;
Im = 10*(10^-06); //multiplied photocurrent
M = Im/Ip; //multiplication factor
disp(Ip*10^6,'Primary photocurrent in uAmps Ip=')
disp(ceil(M),'Primary photocurrent is multiplied by a factor of M =')
//Result
//Primary photocurrent in uAmps Ip =    0.2354717  
//Primary photocurrent is multiplied by a factor of M =  43.  
