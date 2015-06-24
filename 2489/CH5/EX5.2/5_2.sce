clc
//Intitalisation of variables
clear
p= 27.17 //mm
T= 99.5 //C
T1= 100.5 //C
T2= 100 //C
sv1= 1674 //cc per gram
sv2= 1.04 //cc per gram
g= 980.7 //cm/sec^2
d= 13.595 //kg/m^3
//CALCULATIONS
r= (p/10)*d*g
lv= (273.2+T2)*(sv1-sv2)*(p/10)*d*g/(4.184*10^7)
//RESULTS
printf ('Heat of vapourisation of water = %.1f cal g^-1',lv)
