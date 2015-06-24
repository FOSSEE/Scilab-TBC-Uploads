//Example 6.26

clc;clear;
X=[36 -4+9.656*%i -4+4*%i -4+1.656*%i -4 -4-1.656*%i -4-4*%i -4-9.656*%i ];
x=round(clean(ifft(X)));
disp(X,'X(k)=');
disp(x,'x(n)=');
