clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('total no.of possible outcomes=C(10,2)=')
C(10,2)
disp('no. of favourable outcomes=5*5=')
5*5
disp('p=')
25/49