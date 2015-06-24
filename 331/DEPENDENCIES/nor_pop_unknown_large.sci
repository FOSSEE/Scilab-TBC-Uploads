function [Z]= nor_pop_unknown_large(X,u,std,n)
    Z = (X-u)/(std/sqrt(n));
endfunction