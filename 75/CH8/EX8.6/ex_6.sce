    //    EXAMPLE (PG 529)

    //    Consider the coefficient matrix for spline interpolation


A = [2 1 0 0;1 4 1 0;0 1 4 1;0 0 1 2]
[l,u] = lu(A);    //    LU Decomposition
U = l'            //    Lower Triangular matrix
L = u'            //    Upper triangular matrix

