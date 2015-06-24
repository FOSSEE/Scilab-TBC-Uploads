        //    PG (608)

A = [1 2 3;2 3 4;3 4 5]
lam = spec(A)'        //    Eigen values of A
lam1 = lam(1,3)
lam2 = lam(1,1)
lam3 = lam(1,2)

//    Theoretical ratio of convergence

lam2/lam1

//    After extrapolating, we get
        lame1 = 9.6234814

//    Error:
lam1-lame1