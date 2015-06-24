function result= meanestimator(sigma0 , u, sigma, n, X)
    meanX= mean(X);
    result = (n*meanX/sigma0)/((n/sigma0)+(1/sigma)) + (u/sigma)/((n/sigma0)+(1/sigma));
endfunction

function result= varestimator(sigma0 , sigma, n)
    result = (sigma0*sigma)/((n*sigma)+sigma0);
endfunction