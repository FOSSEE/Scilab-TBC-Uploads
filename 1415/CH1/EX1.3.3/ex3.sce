//Example 3 Page 82
clc
clear
C1=25000//assigning C1 value
x1=30//Assigning x1 value
C2=30000//assigning C2 value
x2=40//assigning x2 value
m=((C2-C1)/(x2-x1));//Finding the slopw
disp(m,'the slope is')//displaying the slope value
b=C1-m*x1;//Finding the intercept value
disp(b,'the intercept b is')//dislaying the intercept value
//therefore the function is C(x)
function y=C(x)//function C(x)
    y=500*x+10000
endfunction

x=[0 10 20 30 40 50]//assigning values of x for graph
y=C(x)//function calling
disp(x,'x:')//displaying x
disp(y,'y:')//displaying y
plot(x,y,'blue')//plotting graph in blue colour
xtitle('','Number of Refrigerators','Cost(dollars)')//naming the axes


