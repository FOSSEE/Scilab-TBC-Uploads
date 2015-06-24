        //    PG (476)

A = [0.2 0.6 0;1.6 -0.2 0;-1.6 1.2 3.0]
U = [0.6 0 -0.8;0.8 0 0.6;0 1.0 0]
Ustar = inv(U)
T = Ustar*A*U
trace(A)
lam =spec(A)'
lam1 = lam(1,1)
lam2 = lam(1,2)
lam3 = lam(1,3)
lam1 + lam2 + lam3

    //    trace(A) = lam1 + lam2 + lam3

det(A)
lam1*lam2*lam3

    //    det(A) = lam1 * lam2 * lam3