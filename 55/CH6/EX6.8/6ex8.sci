function [k]= myfunc(n,r)
k=factorial(n)/(factorial(n-r)*factorial(r));
endfunction
k=myfunc(8,3);  
disp(k,'the number of committees of three that can be formed out of eight people')
  
cows=myfunc(6,3)  //number of ways that a farmer can choose 3 cows out of 6 cows
pigs=myfunc(5,2)  //number of ways that a farmer can choose 2 pigs out of 5 pigs
hens=myfunc(8,4)  //number of ways that a farmer can choose 4 hens out of 8 hens
p=cows*pigs*hens;       
disp(p,'total number of ways that a farmer can choose all these animals')