//calculating required data//
//example 17//
clc
//clears the command window//;
clear
//clears//
//n=no. of bits//
//resolution=1/2^n*5//
R=5*10^-3;//resolution//
V=5;//full scale output//
n=log((5*10^-3)/5)/log(.5)
//no. of bits//
n=round(n)
disp('no of bits:')
disp(n);//result is displayed//
S=1/2^n*5;//step size//
R1=S/V*100;//percentage resolution//
disp('percentage resolution:')
disp(R1)
//result is displayed//
