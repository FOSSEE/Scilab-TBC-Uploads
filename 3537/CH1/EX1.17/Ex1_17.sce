//Example 1_17
clc();
clear;
//To calculate the order of interference of the dark band
t=1.5*10^-6                        //units in cm
lemda=5*10^-7                   //units in cm
i=60                            //units in degree
u=1.33
r=asin((sin(i*%pi/180))/u)*(180/%pi)    //units in degree
n=(2*u*t*cos(r*%pi/180))/lemda
printf("The order of interference of the dark band is %.0f",n)
//In this question,the thickness and lemda values are given wrong
//To get the answer i have followed the values that are taken in the answer
