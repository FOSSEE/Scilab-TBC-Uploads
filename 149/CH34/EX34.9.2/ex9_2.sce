clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('total no.of possible cases=C(9,3)')
C(9,3)
disp('favourable outcomes=C(2,2)*C(7,1)+C(3,2)*C(6,1)+C(4,2)*C(5,1)=')
C(2,2)*C(7,1)+C(3,2)*C(6,1)+C(4,2)*C(5,1)
disp('probability=')
(C(2,2)*C(7,1)+C(3,2)*C(6,1)+C(4,2)*C(5,1))/C(9,3)