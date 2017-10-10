//Optical Fiber communication by A selvarajan
//example 3.2
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
NA1=0.2;//numerical apperture of fiber 1
NA2=0.1;//numerical apperture of fiber 2
D1=12;// core daimeter of fiber 1 in um
D2=6;// core daimeter of fiber 2 in um
Losses=20*log10(NA1/NA2)+20*log10(D1/D2);// total fiber to fiber coupling losses due to NA mismatch and size mismatch
mprintf("total losses=%fdB ",Losses);

