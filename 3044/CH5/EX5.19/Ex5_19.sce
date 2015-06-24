// Calculation
// (A) x1 limit- (1,2)   x2 limit- (2,3)
function ans= f1(x1,x2)
    ans = 6*exp(-2*x1-3*x2)
endfunction

//p = int2d(2,3,f1)
//p = dblquad(lambda x1, x2: , 2, 3, lambda x1: 1, lambda x1: 2)
a = feval([2,3],[1,2],f1)
p1 = a(3)

function ans = f2(x1,x2)
    ans = 6*exp(-2*x1-3*x2)    
endfunction

// (B) x1 limit- (0,2)   x2 limit- (2,+inf)
//p = dblquad(lambda x1, x2: , 2, +inf, lambda x1: 0, lambda x1: 2)
//p2 = round(p[0],4)
b = feval([2,3.91],[0,2],f2)
p2 = b(2)
// Result
printf ( "P(1<x1<2 and 2<x2<3):  %.4f",p1)
printf ( "P(0<x1<2 and 2<x2<+inf):  %.4f",p2)
