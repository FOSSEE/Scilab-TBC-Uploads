//Example 2-16, page No-49

clear 
clc

fr=28*10^6
Q=70

bandwidth = fr/Q

printf('The bandwidth is %.3f Khz',bandwidth/10^3)
