//Example 2_21
clc();
clear;
//To find the no. of orders are visible
N=10520                        //units in centimeters
lemda=5*10^-5                   //units in centimeters
theta=90                      //units in degrees
n=((1/N)*sin(theta*%pi/180))/lemda
printf("number of orders that are visible in granting spectra is %.0f",n)
