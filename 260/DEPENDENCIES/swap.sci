function [p,q] = swap(x,y)
    t = x;
    x = y;
    y = t;
    p = x;
    q = y;
endfunction