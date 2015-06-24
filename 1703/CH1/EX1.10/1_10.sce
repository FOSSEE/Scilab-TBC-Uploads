

clc
//initialisation of variables
clear
P= 180 //ln/in^2
r= 53
T= 60 //F
w= 62.4 //lb/ft^3
h= 12 //in
//CALCULATIONS
R= P*144/(r*(460+T))
dP= 12*(1-(R/w))
Pab= dP/(12*2.309)
//RESULTS
printf ('Difference in water level = %.2f in of water ',dP)
printf("\n Pressure difference = %.3f lb/in^2",Pab)
