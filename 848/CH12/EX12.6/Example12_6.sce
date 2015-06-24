//clear//
//Caption: Program to calculate soliton peak power
//Example12.6
//page 447
clear;
clc;
close;
Lambda = 1550e-9; //wavelength in meters
n2 = 2.6e-20; //power in square meter/w
Aeff =  50e-12; //effective area in square meter
Ldisp = 202e03; //dispersion length in meters
Ppeak = (Aeff/(2*%pi*n2))*(Lambda/Ldisp);
disp(Ppeak*1e03,'Soliton peak power in milli watts Ppeak =')
//Result
//Soliton peak power in milli watts Ppeak = 2.3485354
