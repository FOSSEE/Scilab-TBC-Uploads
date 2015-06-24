//Illustration of Newton's Forward Difference Formula
close();
clear;
clc;
x = poly(0,'x');
fx = (x-1)*(x+5)/((x+2)*(x+1));
xi = linspace(0.0,0.8,9); 
x0 = 0;
h = 0.1;
format('v',9);
// values of function at different xi's
f0 = horner(fx , xi);
// First order difference
for j = 1:8
  delta1_f0(j) = f0(j+1) - f0(j);
end
// Second order difference
for j = 1:7
  delta2_f0(j) = delta1_f0(j+1) - delta1_f0(j);
end
// Third order difference
for j = 1:6
  delta3_f0(j) = delta2_f0(j+1) - delta2_f0(j);
end
// Fourth order difference
for j = 1:5
  delta4_f0(j) = delta3_f0(j+1) - delta3_f0(j);
end
//Calculating p4(0.12)
//x0+s*h=0.12
s = (0.12-x0)/h;
p4 = f0(1) + delta1_f0(1)*s + delta2_f0(1)*s*(s-1)/factorial(2) + delta3_f0(1)*s*(s-1)*(s-2)/factorial(3) + delta4_f0(1)*s*(s-1)*(s-2)*(s-3)/factorial(4);
disp(p4 , 'Value of p4(0.12)');
//exact value of f(0.12) is -1.897574 so error
err = p4--1.897574;
disp(err , 'Error in estimation');