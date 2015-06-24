        //    PG 593

disp("Consider Hilbert matrix of order three")

n=3;         //    Order of the matrix
A=zeros(n,n);//    a symmetric positive definite real or complex matrix.
for i=1:n    //    Initializing 'for' loop
    for j=1:n
        A(i,j)=1/(i+j-1);
    end
end        //End of 'for' loop
A

[n,m] = size(A)

if m<>n then
	error('eigenvectors - matrix A is not square');
	abort;
end;

lam = spec(A)'                   //Eigenvalues of matrix A

lam1 = lam(1,1)
lam2 = lam(1,2)
lam3 = lam(1,3)

    //    Rounding off to 4 decimal places

A = A*10^4;
    A = int(A);
    A = A*10^(-4);
    disp(A)        //    Final Solution

lamr = spec(A)'

lamr1 = lamr(1,1)
lamr2 = lamr(1,2)
lamr3 = lamr(1,3)

    //    Errors

lam - lamr

    //    Relative Errors

R1 = (lam1-lamr1)/lam1
R2 = (lam2-lamr2)/lam2
R3 = (lam3-lamr3)/lam3

