clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('total no.of possible cases=C(9,3)')
C(9,3)
disp('favourable outcomes=C(3,3)+C(4,3)=')
C(3,3)+C(4,3)
disp('probability=')
5/84       