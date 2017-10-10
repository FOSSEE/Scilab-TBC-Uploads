//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.1.1
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given

R=0.85;//Responsivity of photodiode in A/W
P=1E-3;//Input power saturation in W

Ip=R*P;//The photocurrent in A
mprintf("The photocurrent =%.2f mA",Ip*1E+3);
