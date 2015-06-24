// Example 2.10, page no-42
clear
clc

a1=18000*10^3           //Semi-major axis for first satellite in m
a2=24000*10^3           //Semi-major axis f0r 2nd satellite in m

T2_by_T1=(a2/a1)^(3/2)
printf("Orbital time period of sattelite 2 is %.2f times that of sattelite 1",T2_by_T1)//value in book is different for seconds.
