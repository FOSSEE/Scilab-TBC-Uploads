//Example 5-6, Page No - 167

clear
clc

S_N = 2.8
fm = 1.5*10^3
fd =4*10^3

fi= asin(1/S_N)
delta = fi*fm
SN =fd/delta

printf('The frequency deviation caused by the noise %.3f Hz',delta)
printf('\n The improved output signal to noise ratio is %.1f ',SN)
