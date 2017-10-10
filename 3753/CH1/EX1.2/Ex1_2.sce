//Example number 1.2, Page number 1.35
clc;clear;close

//Variable declaration
N=3               //position
lamda=5450*10**-10      //Wawelength in Armstrong to metre
mu=1.5  // unitless

//Calculation
t=(N*lamda)/(mu-1)  // micron

//Result
printf("Thickness of glass plate=%0.2f micron",(t*10**6))

