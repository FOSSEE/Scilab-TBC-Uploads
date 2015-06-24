clc
R=500 // cost of ordering in Rs per order  
A=12000 //annual consumption units
C=3.00 // unit cost of item
K=3 // unit storage cost
I1=0.2 // interest rate
function y=f(N)
function G=f2(N)
G=C*A+I1*C*N/2+K*N/2+A*R/N // total cost per year
endfunction
y=derivative(f2,N)
endfunction
funcprot(0)
N=fsolve(2000,f)
O = A/N // number of orders
N1 = 2400 // units
tc = C*A + I1*C*N1/2 + K*N1/2 + A*R/N1 // total cost in Rs
I2 = (2*R*A)/(C*N1^2) 
printf("\n Economic order quantity = %d units\n Totl cost = Rs %d per year\n I = %0.4f",N1,tc,I2)
disp(" It is clear that inventory cost will get increased very greatly")
