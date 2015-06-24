clear
clc
x=poly([0],'x');
p=6*(x^6)-25*(x^5)+31*(x^4)-31*(x^2)+25*x-6
disp("the roots of above equation are ")
roots(p)