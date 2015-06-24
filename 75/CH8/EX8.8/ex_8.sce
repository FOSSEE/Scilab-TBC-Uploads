    //    EXAMPLE (PG 541)

    //    Consider a Hilbert matrix of order 3

n=3;             //    Order of the matrix
A=zeros(n,n);    //    a symmetric positive definite real or complex matrix.
for i=1:n        //    Initializing 'for' loop
    for j=1:n
        A(i,j)=1/(i+j-1);
    end
end        //    End of 'for' loop
A

    //    Rounding off to 4 decimal places
A = A*10^4;
A = int(A);
A = A*10^(-4);
disp(A)        //    Final Solution

H = A        //    Here H denoted H bar as denoted in the text

b = [1 0 0]'
x = H\b

    //    Rounding off to 3 decimal places
x = x*10^3;
x = int(x);
x = x*10^(-3);
disp(x)        //    Final Solution

//Now, using elimination with Partial Pivoting, we get the following answers

x0 = [8.968 -35.77 29.77]'

    //    ro is Residual correction

r0 = b - A*x0

    //    A*e0 = r0

e0 = inv(A)*r0

x1 = x0 + e0

    //        Repeating the above operations, we can get the values of r1, x2, e1...
    //        The vector x2 is accurate to 4 decimal digits.
    //        Note that x1 - x0 = e0 is an accurate predictor of the error e0 in x0.
