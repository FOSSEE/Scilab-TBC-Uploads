function I=comptrapezoidal(x,h,f)
    //This function calculates the numerical integration of f(x)dx
//between limits x(1) and x(n) using composite trapezoidal rule
//Check that x and y have the same size (which must be an odd number)
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
if (modulo(ncx,2)==0) then
	disp(ncx,"list size =")
	error('list size must be an odd number');
	abort
end;
n = ncx;

I = f(x(1)) + f(x(n));
for j = 2:n-1
	if(modulo(j,2)==0) then
		I = I + 2*f(x(j));
	else
		I = I + 2*f(x(j));
	end;
end;
I = (h/2.0)*I
endfunction