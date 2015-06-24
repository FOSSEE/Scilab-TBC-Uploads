 clear
clc
function [x]=C(a,b)
x=factorial(a)/(factorial(b)*factorial(a-b))
endfunction
disp('probability that exactly two will be defective=C(12,2)*(0.1)^2*(0.9)^10=')
C(12,2)*(0.1)^2*(0.9)^10
disp('probability that at least two will be defective=1-(C(12,0)*(0.9)^12+C(12,1)*(0.1)*(0.9)^11)=')
1-(C(12,0)*(0.9)^12+C(12,1)*(0.1)*(0.9)^11)
disp('the probability that none will be defective =C(12,12)*(0.9)^12=')
C(12,12)*(0.9)^12