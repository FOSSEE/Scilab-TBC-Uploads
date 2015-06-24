// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 1")
//Length and breadth is given as 1 unit (Gemoetry is Square)
L = 1;//length
//Problem can be divided into two modules
//Solution to module 1 is given by Eq. 3.21, considering the first three terms
//n is the looping parameter
//theta is the non dimensional temperature defined as ((T-100)/100) where T is actual temperature in degree Celcius.
//Initialising theta as zero
theta = 0;
for n = 1:3
  theta = theta+((2/%pi)*((sin((n*%pi)/2)*sinh((n*%pi)/2))*((-1)^(n+1)+1)))/(n*sinh(n*%pi));
end;
//Solution to module 2 is given by Eq. 3.24, considering the first three terms
for n = 1:3
  theta = theta+(((3*2)/%pi)*((sin((n*%pi)/2)*sinh((n*%pi)/2))*((-1)^(n+1)+1)))/(n*sinh(n*%pi));
end;
//Calculating value of temperature from the value of theta
//Temperature in degree celcius
disp("Temperature at the centre in Degree C is")
T = theta*100+100
