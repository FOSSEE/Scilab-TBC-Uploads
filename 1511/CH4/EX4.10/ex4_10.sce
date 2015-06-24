// Example 4.10 page no-210
clear
clc

alfa=0.96
Rl=5000
x=80
Av=alfa*Rl/x

pg=Av*alfa
printf("Power Gain = %.1f",pg)
