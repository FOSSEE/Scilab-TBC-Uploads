clc
//initialisation of variables
W= 50 //lb/ft
x= 5 //ft
x1= 2 //ft
//CALCULATIONS
V= W*x
M= W*((x/2)+x1)*x
M1= W*x*(x+x1)
M2= -M
M3= -W*x*x/2
EIdeltamax= ((1/2)*(x+x1)*M1*((x+x1)/3))+(x+x1)*M2*((x+x1)/2)+(1/3)*x*M3*(x/4)
//RESULTS
printf ('maximum value of EIdeltax= %.1f lb ft^3',EIdeltamax)
