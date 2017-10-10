//Optical Fiber communication by A selvarajan
//example 2.6
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
 m=0// for dominant mode
 v=0// for dominant mode
 n1=1.5// refractive index of core
 delta=0.01// core clad index difference
 a=5// fiber radius in um
 lambda=1.3//wavelength of operation in um
// to find
 k0=(2*%pi/lambda)//constant in /m
beta=sqrt((k0^2)*(n1^2)-(2*k0*n1*sqrt(2*delta)/a))//propagation constant in rad/um
 mprintf('Propagation constant=%f rad/um',beta)//The answers vary due to round off error
