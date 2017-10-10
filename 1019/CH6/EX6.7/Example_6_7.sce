//Example 6.7
clear;
clc;

//Given
NA=6.023*(10^23);//avogadros number
W=6;//number of orientations
n=1;//moles present
N=NA;//number of particles
R=8.314;//gas constant in J mol^-1 K^-1

//To determine the residual entropy of a crystal in which the molecules can adapt 6 orientations of equal energy at 0 K
S=R*log(W);//residual entropy in J K^-1 mol^-1
mprintf('the residual entropy of a crystal in which the molecules can adapt 6 orientations of equal energy at 0 K = %f J K^-1 mol^-1',S);
//end