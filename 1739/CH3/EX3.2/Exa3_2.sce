//Exa 3.2
clc;
clear;
close;
//Given data :
n1=1.55;//unitless
n2=1.50;//unitless
l=15;//in Km
delta=(n1-n2)/n1;//unitless
c=3*10^8;//in m/s
deltaT=n1*delta/c;//in ns/m
deltaT=n1*delta*1000/c;//in ns/Km
disp(deltaT,"Intermodal dispersion per Km of length in ns/Km : ");
deltaTtotal=deltaT*l*1000;//in ns
disp(deltaTtotal*1000,"Total intermodal dispersion in micro second : ");
//Note : Answer in the book is not accurate.