function [P]=NBDP(x,n,xL,f)
//This function calculates a Newton Forward-Difference Polynomial of
//order n, evaluated at x, using column vectors xL, f as the reference
//table.  The first value of xL and of f, represent, respectively,
//xo and fo in the equation for the polynomial.
[m,nc]=size(f)
//check that it is indeed a column vector
if (nc<>1) then
	error('f is not a column vector.');
	abort
end;
//check the difference order
if (n >= m) then
	disp(n,"n=");
	disp(m,"m=");
	error('n must be less than or equal to m-1');
	abort
end;
//
xo = xL(m,1);
delx = mtlb_diff(xL);
h = delx(1,1); 
s = (x-xo)/h;
P = f(m,1);
delf = f;
disp(delf);
for i = 1:n
	delf = mtlb_diff(delf);
	[m,nc] = size(delf);
    disp(delf);
	P = P + Binomial(s+i-1,i)*delf(m,1)
end;
endfunction

function[C]=Binomial(s,i)
	C = 1.0;
	for k = 0:i-1
		C = C*(s-k);
	end;
	C = C/factorial(i)
endfunction
function[fact]=factorial(nn)
	fact = 1.0
	for k = nn:-1:1
		fact=fact*k
	end;
endfunction	