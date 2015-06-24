//Example 6-2, Page No - 186

clear
clc

f=168.96*10^6
multiplier=24
deviation = 5*10^3
fm = 2.8*10^3
f0 =f/multiplier
fd= deviation/multiplier

phaseshift = fd/fm
phaseshift_degrees = phaseshift*57.3
total_phaseshift =2*phaseshift_degrees

printf('The crystal oscillator frequency is %.2f Mhz',f0/10^6)
printf('\n The total phase shift is %.3f degrees',total_phaseshift)


