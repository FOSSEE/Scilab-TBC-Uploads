// Example 12.9, page no-355
clear
clc
alfe=20*10^-6//per K
t1=293//K
sig=172///MPa
E=100 //GPa
delT=(sig*10^6)/(E*alfe*10^9)
printf("\nTf-Ti=%.0f",delT)
printf("\n\nthe maximum temperature at which the rod may be heated without\nexceeding a compresssive stress of %.0f MPa is %.0f K",sig,delT+t1)
