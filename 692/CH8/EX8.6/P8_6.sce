//Example 8.6
//Factorization of FIR Transfer Function
clear;
clc;
z=%z;
Hz=50.4+28.02/z+13.89/z^2+7.42/z^3+6.09/z^4+3/z^5+1/z^6;
disp(factors(numer(Hz)),'The Factors of the FIR Transfer Function are = ');