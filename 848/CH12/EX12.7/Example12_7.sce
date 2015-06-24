//clear//
//Caption:FWHM soliton pulse width and fraction of bit slot occupied by a soliton
//Example12.7 
//page 448
clear;
clc;
close;
//Example12.7.a
Ldisp = 100e03; //disperison length in meter
omega = 4682; //oscillation period
LI = omega*Ldisp;
disp(LI,'interaction distance in meter LI=')
//Example12.7.b
D = 0.5e-06; //disperison of fiber in ps/nm.km
C = 3e08;//free space velocity
S0 = 8;//normalized separation of neighnoring solitons
B = 10e09; //data rate 10 Gb/sec
Lambda = 1550e-9; //wavelength in meters
Beta2 = (Lambda/(2*%pi));
LT = (C*exp(S0))/(16*D*B^2*(Beta2^2)*(S0^2));
disp(LT*1e03,'Total transmission distance in Km LT =')
//Example12.7.c
Ts = 0.881/(S0*B);
disp(Ts*1e12,'FWHM soliton pulse width in pico seconds Ts =')
//Example12.7.d
Ts_TB = 0.881/S0;
disp(Ts_TB*100,'Fraction of the bit slot occupied by a soliton in percentage Ts_TB=')
//Result
//interaction distance in meter LI = 4.682D+08  
//Total transmission distance in Km LT = 2.870D+11  
//FWHM soliton pulse width in pico seconds Ts = 11.0125  
//Fraction of the bit slot occupied by a soliton in percentage Ts_TB = 11.0125
