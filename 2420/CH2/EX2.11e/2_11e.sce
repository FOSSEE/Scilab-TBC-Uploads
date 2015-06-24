clc
clear
//Initialization of variables
Per=0.044 //percentage
tg=500 //F
ta=70 //F
//calculations
Q5=9*Per*(1089+0.46*tg-ta)
//results
printf("Heat loss = %.1f Btu per lb of fuel",Q5)
