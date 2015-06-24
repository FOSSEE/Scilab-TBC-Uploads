clc
c = 50000 // components
R=500 // cost of ordering in Rs per order  
A=12000 //annual consumption units
C=3.00 // unit cost of item
K=1.50 // unit storage cost
I=0.2 // interest rate
function y=f(N)
    function G=f2(N)
        G=0.02*N+1500000/N
    endfunction
y=derivative(f2,N)
endfunction
funcprot(0)
N=fsolve(2000,f)
l = c/N // number of lots
l = ceil(l)
ls = c/l // lot size
printf("\n The lot size = %d components",ls)
