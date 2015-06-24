//Example 2-10. Page No - 39

clear
clc

vin=90*10^-3
R1= 10*10^3
vout=7.8
Rout=8

pin= vin^2/R1
pout=vout^2/Rout

Ap_db = 10*log10 (pout/pin)

printf('The power gain in decibel is %.1f dB',Ap_db)

