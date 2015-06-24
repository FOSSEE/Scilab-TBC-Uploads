//Example 2 // Poynting vector
clc;
clear;
close;
//given data :
R=1.5*10^11;// in m
P=3.8*10^26;// in Watt
S=P/(4*%pi*R^2);// in W/m^2
Se=round(S*60/(4.2*10^4));
disp(Se,"Poynting vector,Se(cal/cm^2 -min) = ")
