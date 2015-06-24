//fiber optic communications by joseph c. palais
//example 6.1
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
w=25//spot size in um
lambda=0.633//wavelength in um
//to find
thetar=(2*lambda)/(%pi*w)//divergence angle in radians
thetad=thetar*180/(%pi)//divergence angle in degrees
mprintf("divergence angle is=%fradians or =%fdegrees ",thetar,thetad)
