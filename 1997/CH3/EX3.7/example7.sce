//Chapter-3, Problem 3.7 , Page106
//===========================================================================
clc;
clear;

//INPUT DATA

n1   = 1 ;//since first blindspeed
n3   = 3 ;//since third blindspeed

//Calculations


// blind speed Vb1 = n1*(lamda_1/2)*PRF1 in m/s
// blind speed Vb3 = n3*(lamda-2/2)*PRF2 in m/s
//here PRF1 = PRF2 = PRF
//if Vb1=Vb3 then
//1*(lamda_1/2)*PRF  =  3*(lamda_2/2)*PRF
//lamda_1/lamda_2    = 3/1;
//lamda = C/F;
//therefore F1/F2 = 1/3 ;


//Output
mprintf('Ratio of Operating Frequencies of two Radars are (F1/F2) = 1/3');
