clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('probability of 8 heads and 4 tails in 12 trials=p(8)=C(12,8)*(1/2)^8*(1/2)^4=')
C(12,8)*(1/2)^8*(1/2)^4
disp('the expected no. of such cases in 256 sets =256*p(8) =')
256*(495/4096)