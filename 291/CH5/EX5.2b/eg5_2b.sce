function result= bino(n, k, p)
    result = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k))
endfunction

prob = bino(10,0, 0.1) + bino(10, 1,0.1 );
disp(prob, "The exact probability is ");

probp =  cdfpoi("PQ", 1, 1)
disp(probp, "The poisson approximation is ")