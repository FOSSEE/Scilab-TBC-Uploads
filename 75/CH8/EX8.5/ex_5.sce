    //    EXAMPLE (PG 526)

disp("Consider Hilbert matrix of order three")

n=3;         //    Order of the matrix
A=zeros(n,n);//    a symmetric positive definite real or complex matrix.
for i=1:n    //    Initializing 'for' loop
    for j=1:n
        A(i,j)=1/(i+j-1);
    end
end        //End of 'for' loop
A
chol(A)                    //    Choleski Decomposition
L=[chol(A)]'              //    Lower Triangular Matrix

    //    The square roots obtained here can be avoided using a slight modification.
    //    We find a diagonal matrix D & a lower triangular matrix (L^~), 
    //    with 1s on the diagonal such that A = (L^~) * D * (L^~)'


    //    chol(A) uses only the diagonal and upper triangle of A. 
    //    The lower triangular is assumed to be the 
    //    (complex conjugate) transpose of the upper.