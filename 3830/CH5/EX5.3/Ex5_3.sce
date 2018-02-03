// Exa 5.3

clc;
clear;

// Given

fs = 10000; // frequency of modulated signal(Hz)
fm = 200*10^3; // modulation frequency(Hz)
Ri = 10; // Input resistance(ohms)
e2_by_e1 = 1.3; // limit for lowest frequency(in %)

// Solution

F_lower = fm - fs ; 

printf(' For a double-section filter, \n  e2/e1 =  1/sqrt(1+(w*Rf*Cf)^2) \n');
// Therefore,

function y=f(x) 
    y =(1/(sqrt(2*%pi*F_lower*x)^2+1))-e2_by_e1/100;
endfunction
[x,v,info] = fsolve(0,f);
printf('  The product of Rf*Cf = %.4f  sec \n ',x);
printf(' Let Rf = 10^5 Ohms, so that attenuation is 10:1. Therefore, Cf = ');
Cf = x*10^-7;
printf(' %.3f pf \n ',Cf*10^12);

// The answer provided in the textbook is wrong
