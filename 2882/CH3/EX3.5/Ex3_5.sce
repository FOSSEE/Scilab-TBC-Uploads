//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 90 and 91
clear;
clc;

//Given Data
//Taken as in Example 3.4
esp=50;//Input signal voltage magnitude in volts peak
esf=314/(2*%pi);//Input signal frequncy in hertz
Vr_to_Vdc=6/100;//Ratio of peak to peak ripple voltage to d.c. output voltage

//Solution

//Using figure E3.5

e0av=esp*(1-Vr_to_Vdc/2);//average value of d.c. output voltage in volts
printf("The average value of d.c. output voltage e0av = %.1f Volts",e0av);
