//Example 2 Page 59
clc
clear
//creating C(x) function
function y=C(x)
    y=100000+160*x-0.2*x^2
endfunction

//the variable cost is the part of the cost function that depends on x
VariableCost=poly([0 160 -0.2],'x','c')//variablecost polynomial
disp(VariableCost,'VariableCost in dollars=')
FixedCost=100000
disp(FixedCost,'FixedCost in dollars=')
x=poly(0,'x')//x polynomial creation
Rx=800*x//annual revence of x members
//for the profit we use the formula
Px=Rx-C(x)//displaying the P(x) value by subtracting C(x) from Rx
disp('P(x)=R(x)-C(x)')
disp(Px)
r=roots(Px)//finding the roots of the quadratic equation obtained in P(x)
disp(r)
disp('since members cannot be in negative value we consider the positive value')

x=[0 250]//taking random variables of x for graph
y=C(x)//function calling
plot(400,350000,x,y,'red')//plotting graph
//creating the P(x) function
function y=P(x)
    y=-100000+640*x+0.2*x^2
endfunction
x=([0 150 350])//taking values of x for graph
y=P(x)
plot(x,y,'blue')//plotting graph
xtitle(' ','x','y');

