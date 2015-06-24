//Chapter 9
//page no 310
//given
clc;
clear all;
R=25;           //in nm
R1=25*10^-6;            //in m
L=1000;                 //in nm
L1=10^-6;           //in m
NA=0.2;     
V=2*%pi/L1*R1*NA;
printf(" \n Normalised frequency(V) =  %0.1f ",V);
y=2;                //for parabolic
Mmax=y/(y+2)*(V^2)/2;
printf(" \n Maximum number of modes is equal to =  %0.0f ",Mmax);//answer in book is wrong

