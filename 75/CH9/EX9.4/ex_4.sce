        //    PG 594

A = [101 -90;110 -98]
[n,m] = size(A)

if m<>n then
	error('eigenvectors - matrix A is not square');
	abort;
end;

lam = spec(A)'                   //Eigenvalues of matrix A


    //    A+E = [101-e -90-e;110 -98]
    //    Let e = 0.001
e = 0.001;
    //    Let A+E = D
D = [101-e -90-e;110 -98]

[n,m] = size(D)

if m<>n then
	error('eigenvectors - matrix D is not square');
	abort;
end;
lam = spec(D)'                   //Eigenvalues of matrix A
