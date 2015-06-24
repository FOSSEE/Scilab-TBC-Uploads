//Example 8-1, Page No - 249

clear
clc

f = 16*10^6
ppm = 200

frequency_variation = 200 *16 

min_f = f - frequency_variation
max_f = f + frequency_variation

printf('The minimum and maximum frequencies for the crystal of \n 16 Mhz with stability of 200 are %d Hz and %d Hz respectively',min_f,max_f)
