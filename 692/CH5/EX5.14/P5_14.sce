//EXAMPLE 5.14
//DFT of two real sequences using one DFT
clear;
clc;
g = [1 2 0 1];
disp(g,'g[n] = ');
h = [2 2 1 1];
disp(h,'h[n] = ');
x = g + %i.*h;
disp(x,'x[n] = ');
X = fft(x,-1);
disp(X,'The DFT, X[k] = ');
X1 = conj(X);
disp(X1,'X*[k] = ');

for i=0:3;
    a(i+1)=pmodulo(-i,4);
    X2(i+1)=X1(a(i+1)+1);
end

X3 = conj(X2');
disp(X3,'X*[<4-k>4] = ');
disp(0.5*(X + X3),'G[k] = ');
disp((X - X3)/(2*%i),'H[k] = ');








