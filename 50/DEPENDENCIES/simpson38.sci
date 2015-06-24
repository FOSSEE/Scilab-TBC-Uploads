function [I] = simpson38(x,f)
//This function calculates the numerical integration of f(x)dx
//between limits x(1) and x(n) using Simpson's 3/8 rule
//Check that x and f have the same size (which must be of the form 3*i+1,
//where i is an integer number)
//Also, the values of x must be equally spaced with spacing h

y=feval(x,f);
[nrx,ncx]=size(x)
[nrf,ncf]=size(y)
if ((nrx<>1)|(nrf<>1)) then
	error('x or f, or both, not column vector(s)');
	abort;
end;
if ((ncx<>ncf)) then
	error('x and f are not of the same length');
	abort;
end;
//check that the size of the lists xL and f is odd
if (modulo(ncx-1,3)<>0) then
	disp(ncx,"list size =")
	error('list size must be of the form 3*i+1, where i=integer');
	abort
end;
n = ncx;
xdiff =  mtlb_diff(x);
h = xdiff(1,1);
I = f(x(1)) + f(x(n));
for j = 2:n-1
	if(modulo(j-1,3)==0) then
		I = I + 2*f(x(j));
	else
		I = I + 3*f(x(j));
	end;
end;
I = (3.0/8.0)*h*I
endfunction
