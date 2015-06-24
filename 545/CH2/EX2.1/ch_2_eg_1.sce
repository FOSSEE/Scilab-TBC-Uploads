//ch 2 ex 2.1 solving using newton's method.
clc
disp("the soln of eqn 2.1--> Newton Method");
x=.5                      //initial value
xnew=0
e=1
while e>10^-4 do x=xnew,function y=Fa(x),
         y=x^3-5*x+1;                   //defining fn 
endfunction 
der=derivative(Fa,x),                //differentiating the fn
xnew=x-Fa(x)/der,
e=abs(xnew-x),
end
disp(xnew,"the root of the eqn is");