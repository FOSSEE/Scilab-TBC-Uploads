//example no. 3.12
//solve system by decomposition method

A=[1 1 -1;2 2 5;3 2 -3]

b=[2;-3;6]



       // hence we can observe that LU decomposition method fails to solve this system since the pivot L(2,2)=0;
       
       
       //we note that the coefficient matrix is not a positive definite matrix and hence its LU decomposition is not guaranteed,
       
       
       //if we interchange the rows of A as shown below the LU decomposition would work,
       
       A=[3 2 -3;2 2 5;1 1 -1]
       
       b=[6;-3;2]
       
       [U,L]=LandU(A,3)        // call LandU function to evaluate U,L of A,

n=3;
Z=fore(L,b);

X=back(U,Z)
                 