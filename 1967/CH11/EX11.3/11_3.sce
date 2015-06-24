clc
//initialisation of variables
clear
T= 100 //C
j= 0.0242 //cal cc^-1 atm6-1
k= 539 //cal g^-1
p= 1664 //cc g^-1
//CALCULATIONS
r= (273.2+T)*(p-1)*j/k
//RESULTS
printf ('Rise in temperature per unit of pressure= %.1f deg atm^-1',r)
