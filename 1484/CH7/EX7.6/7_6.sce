clc 
//initialisation of variables
Q= 20 //gallons / day
i= 50000 //inhabitants
p= 10 //percent
t= 24 //hrs
T= 0.25 //in
a= 2000 //acres
//CALCULATIONS
q= Q*i*p/(100*60*60*6.24)
A= T*43560*a/12
Q1= A/(t*60*60)
Q2= q+Q1
//RESULTS
printf ('total discharge= %.2f cuses',Q2)
