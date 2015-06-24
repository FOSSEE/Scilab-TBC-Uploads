function[u, sigmasquared]=normal(X, Xmean, n)
    u= Xmean;
    newsum = 0;
    for i= 1:n
        newsum= newsum + (X(i)-Xmean)^2
    end
    sigmasquared = sqrt((newsum/n));
endfunction