clc 
//initialisation of variables
Q= 30 //gallons/head
C= 78
n= 100000
d= 3 //miles
l= 40 //ft
//CALCULAIONS
st= Q*n
Q1= st/(6.24*2*8*60^2)
i= l/(d*5280)
d= (4*Q1*sqrt(4/i)/(%pi*C))^(2/5)
//RESULTS
printf ('size of pipe= %.2f ft',d)
