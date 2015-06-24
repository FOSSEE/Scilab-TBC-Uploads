// Example 6.7 page no-353
clear
clc
hie = 1100
hfe = 50
hre = 2.50*10^-4
hoe = 25*10^-6

Rl=0.1*hie/((hfe*hre)-(0.1*hoe*hie))
Rl=Rl/1000
printf("Rl= %.1f K Ohm",Rl)
