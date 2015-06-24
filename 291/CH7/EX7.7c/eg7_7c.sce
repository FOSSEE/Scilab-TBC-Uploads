function result = unbiasedestimator(X, n)
    c=(n+2)/(n+1);
    result = c*max(X);
endfunction