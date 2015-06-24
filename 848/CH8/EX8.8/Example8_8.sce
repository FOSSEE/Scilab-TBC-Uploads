//clear//
//Caption: Program to percentage of burst error detected by CRC
//Example8.8
//page 309
clear;
clc;
close;
N =32;
Ped = 1-(1/(2^N));
disp(Ped*100,'Percent of burst error detected by CRC for a length of 32 Ped=')
//Result
//Percent of burst error detected by CRC for a length of 32 Ped=100. 
