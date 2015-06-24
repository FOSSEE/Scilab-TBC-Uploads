clc
syms n
disp('u=((n+1)^0.5-1)/((n+2)^3-1)=>')
//put n=1/n
u=((1+1/(1/n))-(1/n)^(-0.5))/(((1/n)^5/2)*((1+2/(1/n))^3-(1/n)^(-3)))
v=(1/n)^(-5/2)
disp(limit(u/v,n,0));
//disp('=1')
disp('since , v is convergent,so u is also conzavergent.')