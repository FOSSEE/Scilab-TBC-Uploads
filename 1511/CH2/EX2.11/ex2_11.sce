// Example 2.11 page no-59
clear
clc
dT=20
T=2310 //°K
Ew=4.52
k=8.62*10^-5
x=(Ew/(k*T))
x=(2+x)*dT/T
printf("\n(a)\ndIth/Ith=%.1f%%\n\n(b)\nThis is solved by Trial and Error Method to get T = 2370°K",x*100)
