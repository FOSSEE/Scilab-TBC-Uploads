        //    PG (617)

A = [1 3 4;3 1 2;4 2 1]
w2 = [0 2/sqrt(5) 1/sqrt(5)]'
P1 = eye() - 2*w2*w2'
T = P1' * A * P1    //    Tridiagonal matrix
