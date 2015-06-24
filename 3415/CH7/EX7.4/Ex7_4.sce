//fiber optic communications by joseph c. palais
//example 7.4
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
G=5//Gain of each dynode
N=9//No. of Dynode
//to find
M=G^N//current amplification in photomultiplier 
mprintf('The current amplification in the photomultiplier =%fx10^6',M/10^6)//division by 10^6 to repsesent the result in th form ax10^6
