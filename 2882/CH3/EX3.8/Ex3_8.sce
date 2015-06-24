//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 91 and 92
clear;
clc;

//Given Data

Rl=220;//Load resistance in ohms
r=4;//Diodes dynamic resistance in ohms
esp=50*sqrt(2);//Input signal voltage magnitude in volts peak
esf=314/(2*%pi);//Input signal frequncy in hertz
Vdc=30;//output dc voltage in volts

//Solution

ne0dc=2*esp/%pi;//output dc voltage multiplied by turns ratio
i0dc=30/(2/%pi)/220;//output dc current
Vd=r*i0dc;//voltage across conducting diode
eout=i0dc*Rl;//output voltage across Rl
e0dc=(eout+Vd)*2/%pi;//output dc voltage of transformer
n=ne0dc/e0dc;//transformer ratio
printf("The transformer turns ratio = n = %.3f",n);

//Error in decimal places in textbook due to approximations
