// Exa 7.3

clc;
clear;

// Given data

Attn=40; // Attenuation in dB
x=2; // x= ratio of W to Wh

// Solution

printf(' Using equation 7.26,\n');

// 20*log(H(jw)/A0)=-40; // -ve since it is attenuation
// gives
// H(jw)/A0 = 10^-2 = 0.01
// so
// (0.01)^2 = 1/(1+2^(2*n));
// or 2^2n = 10^4  - 1;
// solving for n, we get 

n=log(10^(4) -1)/(2*log(2));
printf('  The calculated value of n = %.2f. \n',n);
printf('  Since order of filter must be an integer so, n = %d. \n',round(n));
 
