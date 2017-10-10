
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 6.11
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
Pin=900*10^-3;// Input Power in W
Voc=600*10^-3;// Open circuit voltage in V
Isc=240*10^-3;//Short circuit current in A
FF=0.75;//Fill factor
Pmax=(Voc*Isc*FF);// Maximum Power in W
eta=(Pmax/Pin);// Conversion Efficiency 
mprintf("\n Conversion Efficiency is =%.2f Percent",eta*100);//multiplication by 100 to convert into percentage
