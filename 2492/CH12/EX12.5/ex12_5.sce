// Exa 12.5
format('v',8)
clc;
clear;
close;
// Given data
memory= 16;// in K
memory= memory*1024;// in bits
// Number of words
N1= memory;
disp(N1,"The number of words is : ")
N2= 32;// number of bits per word
disp(N2,"The number of bits per word is : ")
// Number of memory cell
N3= N2*memory;
disp(N3,"The number of memory cell is : ")

