clc
clear
printf("Example 11.3 | Page number 397 \n\n");
//Find temperature and pressure at which steam will beahve similar to air
//Given Data
pR = 0.26525 //reduced pressure
TR = 2.26415 //reduced temperature
pc = 22.09 //bar //critical pressure of water
Tc = 647.3 //K //critical temperature of water
//Solution
p = pR*pc //bar
T = TR*Tc //K
printf("Temperature at which steam would beahve similar to air at 10 bar and 27°C = %.1f K\n",T)

printf("Pressure at which steam would beahve similar to air at 10 bar and 27°C = %.2f bar\n",p)
