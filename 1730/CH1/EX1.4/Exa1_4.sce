//Exa4
clc;
clear;
close;
//given data :
//wavelength
lamda=1.539; //in Angstrum
//angle
theta=22.5; // in degree
n=1;//(first order)

// Formula n*lamda=2*d*sin(theta) , so
// interplaner distance,
d=lamda/(2*sin(theta*%pi/180));
disp("Interplaner distance is : "+string(d)+"  Angstrum")