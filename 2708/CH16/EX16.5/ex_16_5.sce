//Example 16.5 //de-broglie wavelength 
clc;
clear;
//given data :
m=1.67D-27;// mass of proton in kg
h=6.62D-34;// plank's constant in joules-sec
V=2000;// potential Dfference
ma=4*m;// mass of alpha particle in kg
q=2*1.6D-19;// charge on alpha particle
lamda=h/sqrt(2*ma*q*V);// formula to calculate
disp(lamda,"de-broglie wavelength in m")
