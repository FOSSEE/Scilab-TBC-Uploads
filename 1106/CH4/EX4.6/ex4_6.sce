// Example 4.6, Page No-192
clear
clc

Rf=10*10^3
RL=2000
Vi=0.5

IL=Vi/Rf
IL=IL*10^6
printf("Current IL= %d uA", IL)

IL=IL/10^6
Vmax=IL*RL + IL*Rf
printf("\nVmax= %.2f V", Vmax)
printf("\nHence output clipping doesnot occur")
