// Calculation

function ans = f1(x1,x2)
    ans  = 6*exp(-2*x1-3*x2)
endfunction

// (A) x1 limit- (0,1)   x2 limit- (0,1)
p1 = feval([0,1],[0,1],f1)
p = p1(2)

// Result
printf ( "P(x1<1 and x2<1): %.3f",p)

// Note : Answer may vary because scilab use feval function and it calculates differently.
