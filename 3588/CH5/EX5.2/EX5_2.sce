//Clearing console
clc
clear

x = poly(0,"x")

//Intializing variables
x0 = 0
x1 = 1

//Consrtucting K and F matrices to solve the residual equations
K(1,1:2) = [integrate('x*(x-1)*2','x',x0,x1) integrate('x*(x-1)*2*(3*x-1)','x',x0,x1)]
K(2,1:2) = [integrate('x^2*(x-1)*2','x',x0,x1) integrate('x^2*(x-1)*2*(3*x-1)','x',x0,x1)]

F = [integrate('x*(x-1)*(10*(x^2)+5)','x',x0,x1); integrate('x^2*(x-1)*(10*(x^2)+5)','x',x0,x1)]

//Solving for constants in assumed solution
U(1:2,1)=linsolve(K,-F)

S = U(1,1)*x*(x-1)+U(2,1)*x^2*(x-1)

//Calculating solution for given differntial equation
for t =1:11
    P(1,t) = (U(1,1)*(t-1)*(t-11)/100)+(U(2,1)*(t-1)^2*(t-11)/1000)
end

//Constructing x matrix
k = 0:0.1:1;

//plotting solution
plot(k,P);
xtitle('solution','x','y(x)')

printf('\nResults\n')
printf('\nSolution of the Differential Equation y(x) =') 
disp(S)

