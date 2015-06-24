function [x,lam] = eigenvectors(A)

//Calculates unit eigenvectors of matrix A
//returning a matrix x whose columns are 
//the eigenvectors.  The function also 
//returns the eigenvalues of the matrix.

[n,m] = size(A);

if m<>n then
	error('eigenvectors - matrix A is not square');
	abort;
end;

lam = spec(A)';                   //Eigenvalues of matrix A

x = [];

for k = 1:n
	B = A - lam(k)*eye(n,n); //Characteristic matrix
        C = B(1:n-1,1:n-1);	 //Coeff. matrix for reduced system
	b = -B(1:n-1,n);         //RHS vector for reduced system
	y = C\b;		 //Solution for reduced system
	y = [y;1];		 //Complete eigenvector
	y = y/norm(y);		 //Make unit eigenvector 
	x = [x y];		 //Add eigenvector to matrix
end;

endfunction
//End of function