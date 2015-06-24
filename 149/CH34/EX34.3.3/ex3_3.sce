clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('no. of committees=C(6,3)*C(4,2)=')
C(6,3)*C(4,2)