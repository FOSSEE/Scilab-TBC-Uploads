// Example 4.11 //compare the total first order dispersion
clc;
clear;
close;
so=0.095;//ps nm^-2 km^-1
h=1270;//in nm
ho=1320;//in nm
dt1=((h*so)/4)*((1-(ho/h)^4));// in ps nm^-1 km^-1
h1=1520;//in nm
dt21=((h1*so)/4)*((1-(ho/h1)^4));// in ps nm^-1 km^-1
dt2=dt21-(13.5+4.1);// in ps nm^-1 km^-1
disp(dt1,"first order dispersion at wavelength 1270nm in ps nm^-1 km^-1")
disp(dt2,"first order dispersion at wavelength 1320nm in ps nm^-1 km^-1")
//answer is wrong in the textbook
