clc
//initialisation of variables
Height= 7 //m
Thickness= 0.6 //m
density= 2000 //Kg/m^3
//CALCULATIONS
W= density*9.81*Thickness*Height
p= 0.1*W*2/(Height*Height)
//RESULTS
printf ('p= %.2f N/m^1',p)
