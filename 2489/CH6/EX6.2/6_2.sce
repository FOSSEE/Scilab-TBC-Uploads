clc
//Intitalisation of variables
clear
svl= 1.0001 //cc/gram
svi= 1.0907 //cc/gram
T= 0//C
Hf= 79.8 //cal/gram
p= 76 //mm
sp= 13.595
g= 980.7 //cm/sec^2
//CALCULATIONS
r= -(273.2+T)*(svl-svi)*p*sp*g/(Hf*4.184*10^7)
//RESULTS
printf ('Decrease in melting point = %.4f per atm',r)
