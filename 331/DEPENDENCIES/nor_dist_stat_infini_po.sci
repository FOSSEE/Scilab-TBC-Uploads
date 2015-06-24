function [Z]= nor_dist_stat_infini_po(X,u,std,samplesize)
    Z = (X-u)/(std/sqrt(samplesize));
endfunction