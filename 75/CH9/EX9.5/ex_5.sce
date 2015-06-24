        //    PG 599

    //    e = 0.001
    //    From earlier example : 
    //    eigen values of matrix A are 1 and 2. So,..

    //    inv(P)*A*P = [1 0;0 2]

A = [101 -90;110 -98]
B = [-1 -1;0 0]
    //    From the above equation, we get:

P = [9/sqrt(181) -10/sqrt(221);10/sqrt(181) -11/sqrt(221)]
inv(P)
K = norm(P)*norm(inv(P))        //    K is condition number
u1 = P(:,1)
u2 = P(:,2)
Q = inv(P)
R = Q'
w1 = R(:,1)
w2 = R(:,2)
s1 = 1/norm(w1,2)
norm(B)

//    abs(lam1(e) - lam1) <= sqrt(2)*e/0.005 + O(e^2) = 283*e + O(e^2)
