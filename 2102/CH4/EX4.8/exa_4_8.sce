// Exa 4.8
clc;
clear;
close;
// Given data
n=50/100;
lamda= 900;// in nm
R= n*lamda/1248;// in A/W
disp(R,"Responsivity in A/W is : ")

// Part (b)
Ip= 10^-6;// in A
Pop= Ip/R;// in W
disp(Pop,"The received optical power in W is : ")

// Part (c)
h= 6.62*10^-34; // in Js
c= 3*10^8;// in m/s
// Pop= n*h*c/lamda
n= Pop*lamda*10^-9/(h*c);
disp(n,"The corresponding number of received photons is : ")

// Note : There is a calculation error in evaluating the value of n (number of received photons) , so the answer in the book is wrong
