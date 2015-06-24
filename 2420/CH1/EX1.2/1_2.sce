clc
clear
//Initialization of variables
g=32.2 //ft/s^2
g2=32.0 //ft/s^2
rate=10 //ft/s^2
w1=500 //lbf
//calculations
fd1=w1*g2/g
F=fd1/g2 *rate
ms=w1/g
F2=ms*rate
//results
printf("Net weight of body in case 1 = %.1f lbf",F)
printf("\n Force in case 2 = %.1f lbf",F2)
