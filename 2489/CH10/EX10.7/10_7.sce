clc
//Intitalisation of variables
clear
Kx= 4
y1= 7.8 //per cent
//CALCULATIONS
y= ((2*(Kx+1)-sqrt(4*(Kx+1)^2-4*(Kx-1)*Kx))*100/(2*(Kx-1)))+y1
//RESULTS
printf ('per cent of acid that is esterified = %.1f per cent ',y)
