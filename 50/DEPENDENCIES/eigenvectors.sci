function [x,lam] = geigenvectors(A,B)

//Calculates unit eigenvectors of matrix A
//returning a matrix x whose columns are 
//the eigenvectors.  The function also 
//returns the eigenvalues of the matrix.

[nA,mA] = size(A);
[nB,mB] = size(B);

if (mA<>nA | mB<>nB) then
	error('geigenvectors - matrix A or B not square');
	abort;
end;

if nA<>nB then
	error('geigenvectors - matrix A and B have different dimensions');
	abort;
end;

lam = poly(0,'lam'); 		  //Define variable "lam"
chPoly = det(A-B*lam);            //Characteristic polynomial
lam = roots(chPoly)';             //Eigenvalues of matrix A

x = []; n = nA;

for k = 1:n
	BB = A - lam(k)*B;       //Characteristic matrix
        CC = BB(1:n-1,1:n-1);	 //Coeff. matrix for reduced system
	bb = -BB(1:n-1,n);       //RHS vector for reduced system
	y = CC\bb;		 //Solution for reduced system
	y = [y;1];		 //Complete eigenvector
			  
	x = [x y];		 //Add eigenvector to matrix
end;

endfunction
