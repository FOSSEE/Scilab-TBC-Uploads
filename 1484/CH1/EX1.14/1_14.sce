clc 
//initialisation of variables
w= 62.4 //lbs/ft^3
sg= 1.6
h= 10 //ft
h1= 4 //ft
//CALCULATIONS
D= w*sg
W= w*(h+h1)^2/2
P= w*h
P1= D*h1
P2= (P*h/2)+P*h1+(h1*P1/2)
y= ((P*h*(h1+(h/3))/2)+P*h1*(h1/2)+P1*h1^2/6)/P2
//RESULTS
printf ('Position where P acts= %.1f ft above the base',y) 
