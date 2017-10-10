//Example 8_2
clc();
clear;
//To calculate the fundamental frequency of crystal
t=0.002                          //units in meters
v=5750                          //units in meter per second
f=v/(2*t)
printf("The fundamental frequency of crystal is %.0f Hz",f)
//the answer in the textbook is given wrong as 1.44*10^-6 but the correct answer is 1437500 Hz 
