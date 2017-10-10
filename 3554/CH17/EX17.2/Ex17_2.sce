
// Exa17.2

clc;
clear all;

// Given data

n=5;// 5 bit ladder
V=10;// For binary 1

// Solution
// refering table 17.4(page no. 615)-Various Output voltage for corresponding MSB

disp("The output voltage for each bit is as follows:");
disp("");
for i=1:n
MSB(i)=V/2^i; //voltage corresponding to MSB i
printf('  %d MSB          Va = V/2^%d = %.4f V \n ',i,i, MSB(i));
end
