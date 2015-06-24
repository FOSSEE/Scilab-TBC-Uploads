clc
//Intitalisation of variables
clear
T= 100 //C
v1= 1674 //cc
v2= 1 //cc
lv= 539.9 //cal g^-1
sp= 13.595 //kg/m63
g= 980 //cm/sec^2
//CALCULATIONS
r= (273.2+T)*(v1-v2)*sp*g/(lv*4.187*10^7)
Tf= T+r
//RESULTS
printf ('Final temperature = %.2f C',Tf)
