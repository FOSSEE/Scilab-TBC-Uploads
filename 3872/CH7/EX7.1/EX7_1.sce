//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 7 ; Example 7.1
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
V = 20;                                      //short ciruit voltage in kV
X = 8;                                      //short circuit inductance in ohm
R = 0.8;                                    //short ciruit resistance in ohm
t = 3;                                      //no. of cycles after fault inception
Iac = V/(sqrt((X^2)+(R^2)))*1               //rms ac fault current in kA
K = sqrt(1+ (2*%e^(-4*%pi*(0.5)/10)));     //asymmetry factor for 0.5 cycles
Imom = K*Iac;                              //rms momentart current at t=0.5 cycle in kA
K = sqrt(1+ (2*%e^(-4*%pi*(3)/10)));       //asymmetry factor for 3 cycles
Irms = K*Iac;                              //rms asymmetrical fault current in kA
printf('\n The rms ac fault current Iac = %f kA',Iac);
printf('\n The rms momentary current at o.5 cycle Imom = %f kA',Imom);
printf('\n The rms asymmetrical fault current Irms = %f kA',Irms);
