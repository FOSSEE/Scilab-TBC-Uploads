//Example 7.7
clc;
syms n z;
X1=0;
X2=0;
for i=0:2:4
    x1=(1/2)^i;
    X1=X1+x1*z^-i;
end
for i=1:2:5
    x2=(1/3)^i;
    X2=X2+x2*z^-i;
end
x3=2^n;
X3=symsum(x3*(z^-n),n,-%inf,1);
X=X1+X2+X3;  
disp(X,'X(z)=');