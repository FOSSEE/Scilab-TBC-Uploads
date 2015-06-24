function result= hyper(N, M, n, i)
    result = factorial(N)*factorial(M)*factorial(n)*factorial(N+M-n)/(factorial(i)*factorial(N-i)*factorial(n-i)*factorial(M-n+i)*factorial(N+M));
endfunction

r= 50;
n=100;
X=25;
disp(r*n/X , "Estimate of the number of animals in the region is")