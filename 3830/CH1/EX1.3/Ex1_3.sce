// Exa 1.3

clc;
clear;

// Given

// A 3_1/2 digit DVM
V = 19.99; // Max voltage in Volts

// Solution

printf('The maximum number of counts that can be made with 9 3_1/2 digit DVM is  1999 \n The samllest change in input that can be measured is 1 count \n');
// 1 count in volts corresponds to resolution :-
// 1999 counts = 19.99 V
// 1 count = ?
Resolution = 19.99/1999;

printf(' Resolution = %d mV \n',round(Resolution*10^3));
