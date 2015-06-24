        // PG 591

n = 4
A = [4 1 0 0;1 4 1 0;0 1 4 1;0 0 1 4]
lam = spec(A)

//    Since A is symmetric, all eigen values are real.
//    The radii are all 1 or 2.
//    The centers of all the circles are 4.
//    All eigen values must all lie in the interval [2,6]
//    Since the eigen values of inv(A) are the reciprocals of those of A,
//    1/6 <= mu <= 1/2

//    Let inv(A) = B

B=inv(A);
norm(B,2)
n
i = 1:n;
j = 1:n;

    //    for j~i
    //        r = sum(abs(B(i,j)))

//    norm(B,2) = r(B) <= o.5