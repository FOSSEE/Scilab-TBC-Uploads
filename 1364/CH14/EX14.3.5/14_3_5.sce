clc
//initialisation of variables
w= 62.3 //lbf/ft^3
Q= 195 //gal
n= 0.71 //t^3
Ht= 25 //ft
Q1= 325 //gal
Ht1= 31.5 //ft
//CALCULATIONS
P= w*Q*Ht/(n*6.23*33000)
Ps= w*Q1*Ht1/(n*6.23*33000)
//RESULTS
printf (' pressure= %.2f h.p',P)
printf (' \n pressure= %.2f h.p',Ps)
