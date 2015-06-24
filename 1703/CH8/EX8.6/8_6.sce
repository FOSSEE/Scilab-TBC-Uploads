clc
//initialisation of variables
vw= 0.3 //ft/sec
dw= 1 //in
da= 12 //in
ww= 62.3 //lb/ft^3
wa= 0.075 //lb/ft^3
nw= 0.01 //poise
na= 0.00018 //poise
//CALCULATIONS
va= vw*dw*ww*na/(nw*da*wa)
//RESULTS
printf ('critical velocity of air = %.3f ft/sec',va)
