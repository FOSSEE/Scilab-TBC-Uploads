clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('total no.of possible cases=C(40,4)')
C(40,4)
disp('favourable outcomes=C(24,2)*C(15,1)=')
C(24,2)*C(15,1)
disp('probability=')
(C(24,2)*C(15,1))/C(40,4)
