//Caption:Find the distance that the position of port 1 should be shifted .
//Exa:6.2
clc;
clear;
close;
Beeta=34.3;//in rad/m
// S=[0,0.5*%e^(%i*53.13);0.5*%e^(%i*53.13),0];
// S'=[0,0.5*%e^(%i*53.13-x);0.5*%e^(%i*53.13-x),0];
//For S12& S21 to be real ,
x=53.5;//in degrees
x_rad=53.5*%pi/180;
l=x_rad/Beeta;
disp(l*100,'Distance (in cm)=');