//Caluclate the series resistance to convert it into voltmeter
clear;
clc;
//soltion
//given

Im=100*10^-6;//A
Rm=100;//ohm
V=100;//V
Rs=V/Im-Rm;
printf("The value of series resistance is %.1f kΩ",Rs/1000);
