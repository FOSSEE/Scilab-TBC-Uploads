clc 
//initialisation of variables
w= 62.4 //lb/ft^3
a= 60 //degrees
l= 18 //ft
b=  4 //ft
W= 8000 //lb
//CALCULATIONS
P= w*b/(sind(a)*2)
h= ((b/(12*(sind(a))^3))*(sind(a))^2/(b/(sind(a)*2)))+0.5
h1= (1-h)/sind(a)
x= ((l*W)/(h1*P))^(1/3)
//RESULTS
printf ('Level of water = %.2f ft ',x)
