//Optical Fiber communication by A selvarajan
//example 6.2
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
b=0.5//normalized propoagation constant
V=(2*atan(b/(1-b))/(sqrt(1-b)))//normalized frequency
mprintf('Normalized frequency=%f',V)
lamda=1.3;//wavelength in um
n1=2.21;//Film refractive index
n2=2.2;//substrate refractive index
t=(lamda)/(2*%pi*sqrt(n1*n1-n2*n2));//Thickness of film in um
mprintf('\nFilm thickness=%fum',t);
