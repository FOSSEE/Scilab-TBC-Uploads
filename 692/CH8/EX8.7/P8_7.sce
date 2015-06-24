//Example 8.7
//Factorization of IIR Transfer Function
clear;
clc;
z=%z;
//Numerator of the transfer function
Numz=6+17.1/z+33.05/z^2+24.72/z^3+19.908/z^4-5.292/z^5+18.144/z^6;
//Denominator of the transfer function
Denz=1+2.2/z+2.56/z^2+1.372/z^3+0.118/z^4-0.332/z^5-0.168/z^6;
Fn=factors(numer(Numz));
disp(Fn,'Factors of the numerator of the Transfer Function = ');
Fd=factors(numer(Denz));
disp(Fd,'Factors of the denominator of the Transfer Function = ');