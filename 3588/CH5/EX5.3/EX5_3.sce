//Clearing console
clc
clear

x = poly(0,"x")

//Intializing variables
x0 = 0
x1 = 1

K = [integrate('x*(x-1)*(x^2-x+2)','x',x0,x1)]

F = [integrate('x*(x-1)*3*x','x',x0,x1)]

c = F/K

S = c*x*(x-1)+x

//Calculating solution for given differntial equation
for t =1:11
    P(1,t) = (c*(t-1)*(t-11)/100)+(t-1)/10
end

//Constructing x matrix
t = 0:0.1:1;

//plotting solution
plot(t,P);
xtitle('solution','x','y(x)')

printf('\nResults\n')
printf('\nSolution of the Differential Equation y(x) =') 
disp(S)
