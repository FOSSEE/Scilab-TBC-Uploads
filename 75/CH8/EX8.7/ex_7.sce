    //    EXAMPLE (PG 531)

    //    Consider the linear system

    //    7*x1 + 10*x2 = b1
    //    5*x1 + 7*x2 = b2

A = [7 10;5 7]            //    Coefficient matrix
inv(A)                    //    Inverse matrix

    //    cond(A)1        //    Condition matrix

norm(A,1)*norm(inv(A),1)

    //    cond(A)2        //    Condition matrix

norm(A,2)*norm(inv(A),2)

    //    These condition numbers all suggest that the above system 
    //    may be sensitive to changes in the right side b.

    //    Consider the particular case

b = [1 0.7]';        //    Right hand matrix
x = A\b;            //    Solution matrix

    //    Solution matrix

x1 = x(1,:)
x2 = x(2,:)

    //    For the perturbed system, we solve for:

b = [1.01 0.69]';        //    Right hand matrix
x = A\b;                //    Solution matrix

    //    Solution matrix

x1 = x(1,:)
x2 = x(2,:)

    //    The relative changes in x are quite large when compared with
    //    the size of the relative changes in the right side b.
