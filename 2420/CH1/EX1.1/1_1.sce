clc
clear
//Initialization of variables
g=32.2 //ft/s^2
m=500 //lb
rate=10 //ft/s^2
//calculations
F1=m/g *rate
ms=m/g
F2=ms*rate
//results
printf("Force in case 1 = %.1f lbf",F1)
printf("\n Force in case 2 = %.1f lbf",F2)
