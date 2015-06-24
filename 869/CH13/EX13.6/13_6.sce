clc
//initialisation of variables
P= 6 //kips
w= 3 //kips/ft
L1= 8 //ft
L2= 8 //ft
//CALCULATIONS
delta= (P*(L1+L2)^3/192)+(w*(L1+L2)^4/768)
//RESULTS
printf ('midspan value of deflection= %.1f kip ft^3',delta)
