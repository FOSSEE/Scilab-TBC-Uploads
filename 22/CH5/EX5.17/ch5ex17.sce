//Z transform of x[n] = a^n.u[n]+b^-n.u[-n-1]
syms n z;
a=0.9
b = 1.2;

x1=(a)^(n)
x2=(b)^(-n)
//plot2d3(n1,x1+x2)
X1=symsum(x1*(z^(-n)),n,0,%inf)
X2=symsum(x2*(z^(n)),n,1,%inf)
X = X1+X2;
disp(X,"ans=")
