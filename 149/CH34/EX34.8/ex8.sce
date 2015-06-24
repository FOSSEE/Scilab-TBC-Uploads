clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('total no.of possible cases=C(40,4)')
C(15,8)
disp('favourable outcomes=C(24,2)*C(15,1)=')
C(5,2)*C(10,6)
disp('probability=')
(C(5,2)*C(10,6))/C(15,8)
