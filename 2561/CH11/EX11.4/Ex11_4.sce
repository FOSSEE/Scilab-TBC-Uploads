//Ex11_4
clc
tphL=40*10^(-9)
disp("tphL= "+string(tphL)+" seconds") // Time taken from Clear to output
n=3
disp("n= "+string(n))// Number of bits in counter i.e no. of flip-flops used
fmax=1/(n*tphL) // Using formulae fmax<= 1/(n*tphL)
disp("fmax=1/(n*tphL) = "+string(fmax)+" Hz")// Maximum counting rate at which flip-flop can operate reliably

