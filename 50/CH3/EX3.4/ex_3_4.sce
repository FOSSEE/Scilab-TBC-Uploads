// example no.3.4
// solve the system of equations

//(a) . by using cramer's rule,

A=[1 2 -1;3 6 1;3 3 2]

B1=[2 2 -1;1 6 1;3 3 2]

B2=[1 2 -1;3 1 1;3 3 2]

B3=[1 2 2;3 6 1; 3 3 3]


//we know;

X1=det(B1)/det(A)
X2=det(B2)/det(A)
X3=det(B3)/det(A)


//(b). by detemining the inverse of the coefficient matrix

A=[1 2 -1;3 6 1;3 3 2]

b=[2 ;1 ;3]

//we know;

X=inv(A)*b