//z transform   
syms n z;
a=1;
x =%e^-(a*n);
X = symsum(x*(z^(-n)),n,0,%inf)
disp(X,"ans=")