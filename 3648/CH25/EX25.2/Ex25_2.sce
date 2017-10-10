
//Example 25_2
clc();
clear;
//How long it would take according to earth clock for a space ship to make a round trip
fac=0.9990          //Units in c
relfactor=sqrt(1-fac^2)      //units in constant
time1=4.5     //Units in Years
time=2*time1   //Units in Years
oritime=relfactor*time     //Units in years
printf("The original time that is required to complete a round trip is=%.1f Years or %d Months",oritime,round(12*oritime))
