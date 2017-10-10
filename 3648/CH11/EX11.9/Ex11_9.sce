//Example 11_9
clc();
clear;
//To findout how large a diameter  when the sheet is heated
dist=2       //Units in cm
delta=19*10^-6      //Units in Centigrade^-1
t=200      //Units in centigrade
L=dist*delta*t         //Units in cm
printf("The new diameter of the hole is=%.4f cm",2+L)
