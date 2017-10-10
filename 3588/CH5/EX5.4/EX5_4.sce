//Clearing console
clc
clear

x = poly(0,"x")
//Intializing variables
x0 = 0
x1 = 1

//Calculating constants in solution (Y = c*X) X-trial function
c = integrate('x*(x-1)*(10*x^2+5)','x',x0,x1)/integrate('x*(x-1)*2','x',x0,x1)

S1 = c*x*(x-1)

//2nd part of problem

//Consrtucting K and F matrices to solve the residual equations
K(1,1:3) = [integrate('-x*(1-x^3)*12*x^2','x',x0,x1) integrate('x*(1-x^3)*(2-12*x^2)','x',x0,x1) integrate('x*(1-x^3)*(6*x-12*x^2)','x',x0,x1)]
K(2,1:3) = [integrate('-x^2*(1-x^2)*12*x^2','x',x0,x1) integrate('x^2*(1-x^2)*(2-12*x^2)','x',x0,x1) integrate('x^2*(1-x^2)*(6*x-12*x^2)','x',x0,x1)]
K(3,1:3) = [integrate('-x^3*(1-x)*12*x^2','x',x0,x1) integrate('x^3*(1-x)*(2-12*x^2)','x',x0,x1) integrate('x^3*(1-x)*(6*x-12*x^2)','x',x0,x1)]

F = [integrate('x*(1-x^3)*(10*(x^2)+5)','x',x0,x1); integrate('x^2*(1-x^2)*(10*(x^2)+5)','x',x0,x1);integrate('x^3*(1-x)*(10*(x^2)+5)','x',x0,x1)]

//Solving for constants in assumed solution
U(1:3,1)=(linsolve(K,-F))

c4 = -(U(1,1)+U(2,1)+U(3,1))
S2 = U(1,1)*x +U(2,1)*x^2 +U(3,1)*x^3 +c4*x^4

printf('\nResults\n')
printf('\nSolution of the Differential Equation')
printf('\nPart-1 y(x) = ') 
disp(S1)
printf('\nPart-2 y(x) = ') 
disp(S2)
