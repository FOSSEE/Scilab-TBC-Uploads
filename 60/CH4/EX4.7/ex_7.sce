//Example (pg no.144)

A = [1 2 3;4 5 6;7 8 9]
[L,U,E] = lu(A)
       // L is lower triangular matrix(mxn)
       // U is upper triangular matrix(mxmin(m,n))
      // E is permutation matrix(min(m,n)xn)
A*E