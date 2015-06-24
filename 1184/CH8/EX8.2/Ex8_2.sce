//Example 8-2, Page No - 250

clear
clc

f =14.9*10^6
mul_factor = 2*3*3
stability_ppm =300
variation = 0.0003
total_variation = variation* mul_factor

fout = f * mul_factor
frequency_variation = fout*total_variation

f_lower = fout - frequency_variation
f_upper = fout + frequency_variation

printf('The output frequency of the transmitter is %.1f Mhz',fout/10^6)
printf('\n The maximum and minimum frequencies of the transmitter are \n %.2f Mhz and %.2f Mhz ',f_lower/10^6,f_upper/10^6)
