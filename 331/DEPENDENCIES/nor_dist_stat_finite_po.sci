function [Z]= nor_dist_stat_finite_po(X,u,std,n,N)
    Z = (X-u)/((std/sqrt(n))*sqrt((N-n)/(N-1)));
endfunction