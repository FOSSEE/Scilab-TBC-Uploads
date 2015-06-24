        //    (PG 607)

A = [1 2 3;2 3 4;3 4 5]
lam = spec(A)'
lam1 = lam(1,3)
lam2 = lam(1,1)
lam3 = lam(1,2)

    //    Theoretical ratio of convergence

lam2/lam1

b = 0.5*(lam2+lam3)
B = A-b*eye(3,3)

    //    Eigen values of A-bI are:

lamb = spec(B)'
lamb1 = lamb(1,3)
lamb2 = lamb(1,2)
lamb3 = lamb(1,1)

    //    Ratio of convergence for the power method applied to A-bI will be:

lamb2/lamb1

    //    This is less than half the magnitude of the original ratio.