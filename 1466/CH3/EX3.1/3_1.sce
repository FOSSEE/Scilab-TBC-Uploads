
clc
//initialisation of variables
ws= 62.4 //lbf/ft^3
V= 300 //gal
P= 20 //lb/in^2
ww= 10 //Lb
w= 62.4 //lb/ft^3
//CALCULATIONS
Ws= (V*ww)/60
Vws= Ws/w
hp= P*144*Vws/550
//RESULTS
printf (' horse power required= %.1f hp ',hp)
