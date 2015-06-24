// Example 2.22 Two defective tube lights are mixed
clc;
clear;
n=3;
N=10;
p=2/10;
m=n*p;
q=1-p;
var=n*p*q;
S_d=sqrt(var);
Np=N*p;
Nq=N*q;
disp(S_d,"Standard Deviation",var,"Variance",m,"Mean is n*p =",p,"probab. of defective items",N,"Total sample of item");
function value = hyper(Np,Nq,N,n, x)
value = (factorial(Np)*factorial(Nq)*factorial(N-n)*factorial(n))/(factorial(Np-x)*factorial(x)*factorial(n-x)*factorial(Nq-(n-x))*factorial(N));
endfunction
f_0=hyper(Np,Nq,N,n,0);
f_1=hyper(Np,Nq,N,n,1);
f_2=hyper(Np,Nq,N,n,2);
disp(f_0,"Probability of 0 defective tube light in the sample of 3 is ",f_1,"Probability of 1 defective tube light in the sample of 3 is ",f_2,"Probability of 2 defective tube light in the sample of 3 is ",);
