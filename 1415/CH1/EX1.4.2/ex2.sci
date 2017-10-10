//Example 2 Page 98
clc
clear

x=[0 2 4 6 8 10 12 14]//assigning x values as given
disp(x,'Years:')//displaying the x values
y=[9 9 10 11 11 12 13 13]//assigning the y values
disp(y,'Per capital GDP:')//displaying y values
xy=x.*y//calculating xy values
disp(xy,'xy:')//displaying xy values
x2=x^2//calculating x^2 values
disp(x2,'square of x')//displaying x^2 values
n=8;//given n=8 data points
disp(sum(x),'sumof x:')//finding the sum of x
disp(sum(y),'sumof y:')//finding the sum of y
disp(sum(xy),'sumof xy:')//finding the sum of xy
disp(sum(x2),'sumof xsquare:')//finding the sum of x2
m=((n*(sum(xy)))-((sum(x))*(sum(y))))/((n*(sum(x2)))-(sum(x)^2));//calculating m value
disp(m,'m value is:')//displaying m values
b=(sum(y)-(m*sum(x)))/n//calculating b value
disp(b,'b value is:')//displaying b value

function y=f(x)//function for regression line
    y=m*x+b
endfunction
y=f(x)//calling function
plot(x,y)//plotting graph between x and y
xtitle('data point and regression line','x','y')//naming the axex
