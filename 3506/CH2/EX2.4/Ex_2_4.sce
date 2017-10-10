//Optical Fiber communication by A selvarajan
//example 2.4
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given

V=2//v no. for single mode 
a=4//radius of fiber in um
//to find
w=a*(0.65+1.619*V^(-3/2)+2.87*V^-6)//effective mode radius in um
//display

mprintf("Effective mode radius =%f um",w)
