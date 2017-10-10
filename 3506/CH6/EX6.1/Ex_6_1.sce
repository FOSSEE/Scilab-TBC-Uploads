//Optical Fiber communication by A selvarajan
//example 6.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
lamda=1.55;//wavelength in um
n1=1.51;//Film refractive index
n2=1.5;//substrate refractive index
t=(lamda)/(2*%pi*sqrt(n1*n1-n2*n2));//Thickness of film in um
mprintf('Film thickness=%fum',t);

