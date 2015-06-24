//Chapter 8
//Example 8-9
//ProbOnStrainGage 
//Page 230,231
clear;clc;
//Given
GF = 2 ;//Gage factor
DR = 0.001 ;
R = 120 ;
L = DR /(R*GF)  ;
printf ( "\n\n Change in length is %.9f inches per inch ", L )