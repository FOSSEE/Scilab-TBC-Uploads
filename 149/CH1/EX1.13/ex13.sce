clear
clc
x=poly([0],'x');
p=6*(x^5)-41*(x^4)+97*(x^3)-97*(x^2)+41*x-6
disp("the roots of above equation are ")
roots(p)