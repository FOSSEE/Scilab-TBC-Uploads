clc();
clear;
//Given :
//Power of the source = 10^-5 W = 10^-5 J/s
P = 10^-5 ; //Power in J/s
r = 10^-9; //radius in m
r1 = 5; // metal plate 5 m away from the source
WF = 5;//Work function in eV
area = %pi*(10^-9)^2 ; //area in m^2
area1 = 4*%pi*r1^2; // area in m^2
P1 = P*(area/area1); // in J/s
// 1eV = 1.6*10^-19 J
t = (WF*1.6*10^-19)/P1 ;// in s
//1 day = 24 hours * 60 minutes * 60 seconds
N = t/(24*60*60); //in days
printf(" It will take %.0f  days \n",round(N));

