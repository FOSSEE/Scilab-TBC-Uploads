        //    EXAMPLE 590    

A = [4 1 0;1 0 -1;1 1 -4]
[n,m] = size(A);

if m<>n then
	error('eigenvectors - matrix A is not square');
	abort;
end;

lam = spec(A)'                   //Eigenvalues of matrix A
