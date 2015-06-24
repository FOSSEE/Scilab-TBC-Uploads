// Example 2.37 page no-126
clear
clc
V1=200 //V
Vd=50  //V
I=40*10^-3 //A

//If Il=0,
R=(V1-Vd)/I
I0=5   //mA
printf("\n(a)\nR=%d Ohm\nImax occurs when I0 = %d mA\nTherefore, Imax = %d mA",R,I0,I*1----I0)
//for Vmin
Il=25
Vmin=Vd+(Il+I0)*0.001*R
//for Vmax
Vmax=Vd+(Il+I*1000)*0.001*R
printf("\n(b)\nFor Vmin\nVmin=%.1fV\n\nFor Vmax\nVmax=%.1fV",Vmin,Vmax)
