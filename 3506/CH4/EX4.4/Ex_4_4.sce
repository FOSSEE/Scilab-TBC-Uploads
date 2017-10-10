 //Optical Fiber communication by A selvarajan
//example 4.4
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
clear all;
lamda=0.85*10^-6//wavelength of operation in m
delta_lamda=36*10^-9//spectral width in m
fractional_width=delta_lamda/lamda//fractional width 
mprintf("Fractional width=%f percent",fractional_width*100)//multiplication by 100 to represent information in percentage
