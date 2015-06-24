// Exa 4.21
clc;
clear;
close;
// Given data
n=40/100;
lamda= 800;// in nm
Ip = 2*10^-6;// in A
R= n*lamda/1248;
// part (b)
Pop= Ip/R;// in W
disp(R,"Responsivity is : ")
disp(Pop,"The received optical power in watt is : ")
