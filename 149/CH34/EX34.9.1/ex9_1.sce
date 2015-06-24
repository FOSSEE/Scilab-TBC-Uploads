clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('total no.of possible cases=C(9,3)')
C(9,3)
disp('favourable outcomes=C(2,1)*C(3,1)*C(4,1)=')
C(2,1)*C(3,1)*C(4,1)
disp('probability=')
(C(2,1)*C(3,1)*C(4,1))/C(9,3)