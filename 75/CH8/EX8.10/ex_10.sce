    //    EXAMPLE (PG 547)

    //    Gauss Jacobi Method

A = [10 3 1;2 -10 3;1 3 10]        //        Coefficient Matrix
b = [14 -5 14]'                    //        Right hand matrix

x = [0 0 0]'                       //        Initial Gauss
d = diag(A)                        //        Diagonal elements of matrix A
a11 = d(1,1)
a22 = d(2,1)
a33 = d(3,1)
D = [a11 0 0;0 a22 0;0 0 a33]      //        Diagonal matrix of A
[L,U] = lu(A)  //    L is lower triangular matrix, U is upper triangular matrix
H = -inv(D)*(L+U)
C = inv(D)*b

for(m=0:6)     //    Initialising 'for' loop for setting no of iterations to 6
    x = H*x+C;
    disp(x)
    m=m+1;
    x;            //    Solution
    //    Rounding off to 4 decimal places
    x = x*10^4;
    x = int(x);
    x = x*10^(-4);
    disp(x)        //    Final Solution

end