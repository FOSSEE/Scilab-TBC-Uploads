//Example 2-23, Page No - 55

clear
clc

R = 8.2*10^3
C =0.0033*10^-6

fco = 1/(6.28* R*C)

printf('The cut off frequency is %.2f Khz',fco/10^3)
