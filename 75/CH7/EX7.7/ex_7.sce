        //    PG (494)

A = [4 1 0 0;1 4 1 0;0 1 4 1;0 0 1 4]
B = A/4 - eye()
norm(B,'inf')
    //    Let (I+B = C)
C = eye() + B
inv(C)
//    Inverse of (I + B) exists
norm(C,'inf')
//    Inverse of A exists.
