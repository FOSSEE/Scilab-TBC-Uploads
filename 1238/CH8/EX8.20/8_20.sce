//finding no. of bits//
//example 20//
clc
//clears the command window//;
clear
//clears//
E=10;//change in input voltage//
R=10^-3;//resolution//
n=log(E/R+1)/log(2);//no of bits//
n=n+1;
n=round(n)
disp('no of bits:')
disp(n);//result displayed//
