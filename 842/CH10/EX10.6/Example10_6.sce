//clear//
//Example 10.6:Z transform of x[n] = a^n, 0 < n < N-1
syms n z;
a = 0.5;
N =6;
x=(a)^(n)
X=symsum(x*(z^(-n)),n,0,N)
disp(X,"ans=")
//Result
//0.5/z+0.25/z^2+0.125/z^3+0.0625/z^4+0.03125/z^5+0.015625/z^6+1.0  
