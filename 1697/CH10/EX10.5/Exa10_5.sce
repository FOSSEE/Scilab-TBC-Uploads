//Exa 10.5
clc;
clear;
close;
//given data :
//For F1 layer :
disp("For F1 layer :");
Nmax=2.3*10^6;//in cm^3
Nmax=2.3*10^6*10^-6;//in m^3
fc=9*sqrt(Nmax);//in MHz
disp(fc,"Critical frequency in MHz : ");

//For F2 layer :
disp("For F2 layer :");
Nmax=3.5*10^6;//in cm^3
Nmax=3.5*10^6*10^-6;//in m^3
fc=9*sqrt(Nmax);//in MHz
disp(fc,"Critical frequency in MHz : ");

//For F3 layer :
disp("For F3 layer :");
Nmax=1.7*10^6;//in cm^3
Nmax=1.7*10^6*10^-6;//in m^3
fc=9*sqrt(Nmax);//in MHz
disp(fc,"Critical frequency in MHz : ");
//Note : Answer in the book is wrong.