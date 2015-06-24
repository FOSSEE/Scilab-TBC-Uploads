 clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('no. of committees=C(4,1)*C(5,2)=')
C(4,1)*C(5,2)