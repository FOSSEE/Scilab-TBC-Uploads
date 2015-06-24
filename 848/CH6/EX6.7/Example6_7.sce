//clear//
//Caption:circuit bandwidth of a photodiode
//Example6.7
//page 239
clear;
clc;
close;
CP = 3*10^-12;//photodiode capacitance is 3 pico farad
CA = 4*10^-12;//amplifier capcitance is 4 pico farad
CT = CP+CA; //total capacitance
RT1 = 1000; //photodiode load resistance
BC1 = 1/(2*%pi*RT1*CT); //circuit bandwidth
RT2 = 50; //photodiode load resistance
BC2 = 1/(2*%pi*RT2*CT);//circuit bandwidth
disp(BC1,'Circuit bandwidth for 1kilo Ohm photodiode resistance BC1 =')
disp(BC2,'Circuit bandwidth for 50 ohm photodiode resistance BC2 =')
//Result
//Circuit bandwidth for 1kilo Ohm photodiode resistance BC1 = 22736420.  
//Circuit bandwidth for 50 ohm photodiode resistance BC2 =  4.547D+08  
