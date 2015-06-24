// Exa 12.4
format('v',6)
clc;
clear;
close;
// Given data
memory= 16;// in K
wordBit= 8;
// Number of address
N= log((memory/wordBit)*1024)/log(2);
disp(N,"The number of address lines is : ")
