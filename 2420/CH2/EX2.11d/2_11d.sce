clc
clear
//Initialization of variables
M=0.135
tg=500 //F
ta=70 //F
//calculations
Q4=M*(1089+0.46*tg-ta)
//results
printf("Heat loss = %.1f Btu per lb of fuel",Q4)
