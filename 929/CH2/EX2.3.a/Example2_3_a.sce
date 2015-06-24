//Example 2.3(a)

clear;

clc;

vI=5;//Input Voltage

R=10*10^3;

Vsat=13;//Saturation Voltage

iO=vI/R;//(from right to left for Fig.2.4(a) and from left to right for Fig.2.4(b))

printf("iO=%.1f mA",iO*10^3);