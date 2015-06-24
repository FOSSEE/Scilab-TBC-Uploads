clear
clc
//initialisation of variables
h= 94 //ft
w= 62.4 //lb/ft^3
e= 0.58
p= 73.5 //per cent
//CALCULATIONS
WHP= h*e*w/550
BHP= WHP/(p/100)
//RESULTS
printf('W.H.P= %.2f h.p',WHP)
printf('\n Brake horse power= %.1f',BHP)
