//z transform
syms n z;
x =1;
X = symsum(x*(z^(-n)),n,0,%inf)
disp(X,"ans=")