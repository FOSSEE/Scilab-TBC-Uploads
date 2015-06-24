clc
//initialisation of variables
H= 33 //ft lbf/lbf
Q= 100 //ft^3/min
w= 62.4 //lbf/ft^3
s= 0.8
//CALCULATIONS
P= s*w*Q*H/33000
//RESULTS
printf (' power required= %.2f h.p',P)
