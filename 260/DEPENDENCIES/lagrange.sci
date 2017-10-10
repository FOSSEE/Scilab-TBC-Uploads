function p = lagrange(X,y,n)
    
    x = poly(0,'x')
    // n is the order of the polynomial
    //x is the matrix of independent variable values
    //y is the matrix of values of f(x)
    p = 0;
    for i = 1:n+1
        L(i) = 1
        for j = 1:n+1
            if j == i then
                continue ;
            else
                L(i) = L(i)*( x - X(j) )/( X(i) - X(j) ) ;
            end
        end
    p = p + y(i)*L(i) 
    end

endfunction