function result= hyper(N, M, n, i)
    result = factorial(N)*factorial(M)*factorial(n)*factorial(N+M-n)/(factorial(i)*factorial(N-i)*factorial(n-i)*factorial(M-n+i)*factorial(N+M));
endfunction

prob = hyper(15, 5,6, 4)+hyper(15, 5,6,5)+hyper(15,5,6,6);
disp(prob, "Probability that the system will be functional is")