//Exa 5.4
clc;
clear;
close;
format('v',6);

//Given Data :
Q1=400;//KJ
T1=1227+273;//Kelvin
T2=27+273;//Kelvin
A=Q1-T2*Q1/T1;//KJ
disp(A,"Availability of the system in KJ : ");
UA=Q1-A;//KJ
disp(UA,"Unavailable energy in KJ : ");
