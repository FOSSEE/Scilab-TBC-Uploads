        //    PG (613)

A = [4 1 1;1 4 1;1 1 4]
w1 = [0.985599 0.119573 0.119573]'
P1 = eye() - 2*w1*w1'
A2 = P1*A
w2 = [0 0.996393 0.0848572]'
P2 = eye() - 2*w2*w2'
R = P2*A2
Q = P1*P2
Q*R

//    A = Q * R

abs(det(A))
abs(det(Q)*det(R))

//    |det(A)| = |det(Q)*det(R)| = |det(R)| = 54 (approx) 

lam = spec(A)'
lam1 = lam(1,1)
lam2 = lam(1,2)
lam3 = lam(1,3)
lam1 * lam2 * lam3

//    Product of eigen values also comes out to be 54

