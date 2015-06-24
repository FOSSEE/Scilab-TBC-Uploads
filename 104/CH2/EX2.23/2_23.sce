//z transform 
//t=k*T
syms k z;
a=1;
T=1;
x =%e^-(a*k*T);
X = symsum(x*(z^(-k)),k,0,%inf)
disp(X,"ans=")