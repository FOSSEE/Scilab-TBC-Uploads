        //    PG (489)

A = [1 -2;-3 4]
norm(A,1)
norm(A,2)
norm(A,'inf')
lam = spec(A)
r = max(abs(lam))
    //r < = norm(A,2)