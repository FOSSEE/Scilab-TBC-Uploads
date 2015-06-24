//Example 7-1, Page No - 210

clear
clc

t = 71.4*10^-6

f = 1/t
fourth_harmonic = f*4
min_sampling = 2*fourth_harmonic

printf('The frequency of the signal is %.1f Khz',f/10^3)
printf('\n The fourth harmonic is %.1f Khz ',fourth_harmonic/10^3)
printf('\n Minimum sampling rate is %.1f khz',min_sampling/10^3)
