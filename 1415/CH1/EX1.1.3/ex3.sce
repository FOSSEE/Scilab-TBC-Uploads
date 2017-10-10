//Example 3 Page 48
clc
clear
//defining the function 
function y=f(x)
if(x >= -4 & x < -1) then//check value of x
y=-1;
elseif(x >= -1 & x <= 1) then//check value of x
y=x;
elseif(x > 1 & x <= 2) then//check value of x
y=x^2-1;
end
endfunction

disp('a)')
x=-2;//assigning value to x
y=f(x)//function calling
disp(y)
x=-1;//assigning value to x
y=f(x)//function calling
disp(y)
x=0;//assigning value to x
y=f(x)//function calling
disp(y)
x=1;//assigning value to x
y=f(x)//function calling
disp(y)
x=2;//assigning value to x
y=f(x)//function calling
disp(y)

disp('b)')
x=[-4 -3 ]//assigning values to x
y=f(x)//function calling
disp(y)
plot(4,4,x,y,'green')//plotting on graph
x=[-1 0 1]//assigning values to x
y=f(x)//function calling
plot(4,4,x,y,'red')//plotting on graph
x=[1.1 1.3 1.5 2]//assigning values to x
y=f(x)//function calling
plot(4,4,x,y,'blue')//plotting on graph
xtitle('','x','y');
