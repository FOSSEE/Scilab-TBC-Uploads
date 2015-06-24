    //    EXAMPLE (PG 518)

    //    Row interchanges on A can be represented by premultiplication of A 
    //    by an appropriate matrix E, to get EA. 
    //    Then, Gaussian Elimination leads to LU = PA

A = [0.729 0.81 0.9;1 1 1;1.331 1.21 1.1]     //    Coefficient Matrix
b = [0.6867 0.8338 1.000]'                    //    Right Hand Matrix
[L,U,E] = lu(A)
    //    L is lower triangular matrix(mxn)
    //    U is upper triangular matrix(mxmin(m,n))
    //    E is permutation matrix(min(m,n)xn)
Z=L*U 

disp("LU = EA")
E

    //    The result EA is the matrix A with first,rows 1 & 3 interchanged, 
    //    and then rows 2 & 3 interchanged.

    //    NOTE:-According to the book, P is replaced by E here.

