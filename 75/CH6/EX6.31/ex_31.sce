        //    PG (434)

//    2-point linear Boundary value problem


//    Boundary value problems with eigenvalues - case: d^y/dx^2 + lam*y = 0
//    subject to y(0) = 0, y(1) = 0, where lam is unknown.  
//    The finite-difference approximation is: 
//    (y(i-1)-2*y(i)+y(i+1))=-lam*Dx^2*y(i), i = 2,3,...,n-1


[x,y,lam] = BVPeigen1(1,5)


