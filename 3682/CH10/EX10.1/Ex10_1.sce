// Exa 10.1

clc;
clear;

// Given data

//9-bit DAC
step = 10.3; // mV
y=[1 0 1 1 0 1 1 1 1];
n = 9; // since 9 bit DAC

// Solution

i = n;
add = 0;
while(i>0)
    op = step*2^(i-1)*y((n+1)-i);
    i = i-1;
    add = add + op
    end
printf('The output voltage for input 101101111 is %.2f V. \n',add*10^-3);
