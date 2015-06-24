// Example 4.1 page no-203
clear
clc

vcc=12 //V
rl=4  // Ohm
ic=vcc/rl
alfa=0.98
B=alfa/(1-alfa)
ibmin=ic/B
printf("\nIc(saturation)= %d mA\nBeta = %.0f \nIb(min) = %.1f micro A",ic,B,ibmin*1000)
