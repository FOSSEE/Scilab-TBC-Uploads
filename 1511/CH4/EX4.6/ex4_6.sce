// Example 4.6 page no-207
clear
clc
vbb=-1 //V
Rb=50 //K-Ohm
vbe=-0.1
Icbo=(vbe-vbb)/Rb
printf("\nIcbo =%.0f micro A",Icbo*1000)
t=log(Icbo*1000/2)*10/(log(2))
printf("\nDelta_T = %d°C \nHence, T=%d°C",ceil(t),ceil(t)+25)
