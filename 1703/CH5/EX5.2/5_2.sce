

clc
//initialisation of variables
a= 60 //degrees
i= 1/1600
Q= 8*10^6 //gal/hr
M= 110
w= 6.24 //lb/ft^3
//CALCULATIOS
d= ((Q*2^(2/3)*sqrt(1/i))/(w*3600*sqrt(3)*M))^(3/8)
b=6.93 //ft
//RESULTS
printf ('Diameter = %.f ft',d) 
printf('\n breadth = %.2f ft',b)
