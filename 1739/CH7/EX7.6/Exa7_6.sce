//Exa 7.6
clc;
clear;
close;
//Given data :
lambda=1.55;//in um
m=1;//for first order
n=3.5;//Refractive Index(unitless)
//Formula : GratingPeriod=m*lambda/(2*n)
GratingPeriod=m*lambda/(2*n);//in um
disp(GratingPeriod,"grating Period for an InGaAsP DFB Laser diode : ");