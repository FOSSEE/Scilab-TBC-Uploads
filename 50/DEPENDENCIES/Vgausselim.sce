function [x] = gausselim(A,b)

//This function obtains the solution to the system of 
//linear equations A*x = b, given the matrix of coefficients A
//and the right-hand side vector, b

[nA,mA] = size(A)
[nb,mb] = size(b)

if nA<>mA then
	error('gausselim - Matrix A must be square');
	abort;
elseif mA<>nb then
        error('gausselim - incompatible dimensions between A and b');
	abort;
end;

a = [A b];

//Forward elimination

n = nA; 
for k=1:n-1
    for i=k+1:n
	for j=k+1:n+1
		a(i,j)=a(i,j)-a(k,j)*a(i,k)/a(k,k);
	end;
    end; 
end;

//Backward substitution

x(n) = a(n,n+1)/a(n,n);

for i = n-1:-1:1
	sumk=0
	for k=i+1:n
		sumk=sumk+a(i,k)*x(k); 
	end; 
	x(i)=(a(i,n+1)-sumk)/a(i,i); 
end;

endfunction

