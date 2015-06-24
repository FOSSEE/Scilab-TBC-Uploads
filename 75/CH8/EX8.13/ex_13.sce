    //    EXAMPLE (PG 568)

A= [5 4 3 2 1;4 5 4 3 2;3 4 5 4 3;2 3 4 5 4;1 2 3 4 5]    //    Matrix of order 5
    //    Getting the eigenvalues        

lam = spec(A)                //    lamda = spectral radius of matrix A 

max(lam)                    //    Largest eigenvalue
min(lam)                    //    Smallest eigen value

    //        For the error bound given earlier on Pg 567    

c = min(lam)/max(lam)

(1-sqrt(c))/(1+sqrt(c))

    //    For linear system, choose the following values of b    

b = [7.9380 12.9763 17.3057 19.4332 18.4196]'

x = A\b;    //    Solution matrix

    //    Rounding off to 4 decimal places
x = x*10^4;
x = int(x);
x = x*10^(-4)
disp(x)        //    Final Solution
