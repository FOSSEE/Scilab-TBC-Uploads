clc;
M=55.85;//atomic mass
d=7.86 //density of iron in g/cc
N=6.023*1e23
n=2//BCC structure
a=((n*M)/(N*d))^(1/3);
r=(sqrt(3)*a)/4;//radius of iron atom 
disp(+'cm',r,'radius of iron atom =')
