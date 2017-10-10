//Clearing console
clc
clear

x = poly(0,"x")
//Intializing variables
x0 = 0
x1 = 1

//Calculating constants in solution (Y = c*X) X-trial function
c = integrate('x*(x-1)*(10*x^2+5)','x',x0,x1)/integrate('x*(x-1)*2','x',x0,x1)

//Calculating solution for given differntial equation
for t =1:11
    F(1,t) = c*(t-1)*(t-11)/100
end
S = c*x*(x-1)
//Constructing x matrix
t = 0:0.1:1;

//plotting solution
plot(t,F);
xtitle('solution','x','y(x)')

printf('\nResults\n')
printf('\nSolution of the Differential Equation y(x) =') 
disp(S)
