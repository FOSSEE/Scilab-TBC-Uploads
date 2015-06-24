clc;
clear;
sg=0.85;
Q1=0.005;//m^3/s
Q2=0.05;//m^3/s
dia1=0.1;//m
dia2=0.06;//m

//A2/A1=dia2/dia1
d=sg*1000;
Arat=(dia2/dia1)^2;
A2=%pi/4*(dia2^2);
pdiffs=(Q1^2)*d*(1-(Arat^2))/(2*1000*(A2^2));
pdiffl=(Q2^2)*d*(1-(Arat^2))/(2*1000*(A2^2));
disp("kPa",pdiffl,"to","kPa",pdiffs,"kPa","The pressure difference ranges from =")