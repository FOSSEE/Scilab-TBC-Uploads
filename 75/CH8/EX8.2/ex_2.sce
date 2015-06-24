    //    EXAMPLE (PG 512)

A = [1 2 1;2 2 3;-1 -3 0]                //    Coefficient matrix
b = [0 3 2]'                             //    Right hand matrix 
[l,u] = lu(A)
    //    l is lower triangular matrix & u is upper triangular matrix
l*u
if(A==l*u)
    disp('A = LU is verified')
end
det(A)
det(u)
if(det(A)==det(u))
    disp('Determinant of A is equal to that of its upper triangular matrix')

    //    Product rule of determinants is verified
