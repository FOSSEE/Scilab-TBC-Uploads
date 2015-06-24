function fp=linearinterpol(xL,f)
    fp=(f(2)-f(1))/(xL(2)-xL(1));
endfunction;