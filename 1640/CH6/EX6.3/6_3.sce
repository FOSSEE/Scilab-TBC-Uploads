clc 
//initialisation of variables
b= 10 //ft
n= 2
d= 3.5 //ft
i= 1/625
//CALCULATIONS
A= d*(b+(d/n))
L= sqrt(d^2+(d/2)^2)
P= b+2*L
m= A/P
v= 1.486*m^(2/3)*i^0.5/0.03
Q= A*v
//RESULTS
printf ('Discharge = %.1f cuses ',Q)
