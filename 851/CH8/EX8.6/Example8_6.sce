//clear//
//Caption:Reed-Solomon Codes
//Example8.6: Reed-Solomon Codes
//Single-error-correcting RS code with a 2-bit byte
clc;
m =2; //m-bit symbol
k = 1^2; //number of message bits
t =1; //single bit error correction
n = 2^m-1; //code word length in 2-bit byte
p = n-k; //parity bits length in  2-bit byte
r = k/n; //code rate
disp(n,'n')
disp(p,'n-k')
disp(r,'Code rate:r = k/n =')
disp(2*t,'It can correct any error upto =')
