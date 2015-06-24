//Example 8-4, Page No - 259

clear
clc

f = 10*10^6
div_factor = 100
A =64
N = 285
M=32

ref = f/div_factor
R =M*N+A
fout= R*ref

printf('The output frequency of the synthesizer is %.1f Mhz',fout/10^6)
printf('\n The step change is %.1f Mhz ',fout/10^6-918.3)
