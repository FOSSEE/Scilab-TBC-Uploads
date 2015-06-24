clc 
//initialisation of variables
w= 62.4 //lb/ft^3
l= 12 //ft
b= 6 //ft
h= 5.196 //ft
a= 60 //degrees
a1= 45 //degrees
//CALCULATIONS
P= w*l*b*h/2
h1= ((l*b^3*(sind(a))^2/12)/(l*b*(h/2)))+(h/2)
R= P*(b-(h1/cosd(a/2)))/((b*sind(a1))/2)
//RESULTS
printf ('Total comression in the promp CD = %.f lb ',R)
