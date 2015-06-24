function result= bino(n, k, p)
    result = factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k))
endfunction

function answer= condprob(n,k,p,i)
    answer = bino(n,i,p)*bino(m,k-i,p)/bino(n+m,k, p);
endfunction

//The function condprob will give P{X=i|X+Y=k}