clc
clear
disp("example 17.1")
//given
n=2 //number of generating station
f=0.03 //F.O.R
a=1-f
p=40 //generation station power 
function [y]=comb(m,r)
y=factorial(m)/(factorial(m-r)*factorial(r))
endfunction
for i=0:n
    pg(i+1)=comb(n,i)*((f)^i)*((a)^(n-i))
    printf("\nnumber of units out %d ,capacity out  %dMW ,capacity available %dMW ,probability %4f ",i,p*i,p*(n-i),pg(i+1))
end
