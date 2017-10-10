// Exa 21.6
// To determine the user data rate for HIPERLAN/2.

clc;
clear all;

R=3/4; //code rate for convolution encoder

//solution
//64-QAM modulation is used
Sc=250; //Carrier symbol rate(ksps) from Exa 21.5
Bits_sym=log2(64); //64-QAM is used
User_R=Bits_sym*Sc*10^3*R*48;
printf('The user data rate is %d Mbps \n',User_R/10^6);
