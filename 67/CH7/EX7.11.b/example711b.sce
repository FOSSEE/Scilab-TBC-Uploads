//Example 7.11b
//Z transform of (a^n)sin(Wo*n)
clc;
syms Wo n z a;
x1=(a^n)*exp(sqrt(-1)*Wo*n);
X1=symsum(x1*(z^-n),n,0,%inf);
x2=(a^n)*exp(-sqrt(-1)*Wo*n);
X2=symsum(x2*(z^-n),n,0,%inf);
X=(X1-X2)/(2*%i);
disp(X,'X(z)=');