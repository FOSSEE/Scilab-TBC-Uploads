function [pL] = legendrepol(n,var)

//    Generates the Legendre polynomial
//    of order n in variable var

if n == 0 then
	cc = [1];
elseif n == 1 then
	cc = [0 1];
else
	if modulo(n,2) == 0 then
		M = n/2
	else
		M = (n-1)/2
	end;

	cc = zeros(1,M+1);
	for m = 0:M
	    k = n-2*m;
	    cc(k+1)=...
        (-1)^m*gamma(2*n-2*m+1)/(2^n*gamma(m+1)*gamma(n-m+1)*gamma(n-2*m+1));
	end;
end;

pL = poly(cc,var,'coeff');
endfunction

//    End function legendrepol

        //    PG (278)

deff('[y]=f(x)','y=exp(-x^2)')
x0=0;
x1=1;


//    True value
I = integrate('exp(-x^2)','x',x0,x1)

//    Using Gaussian Quadrature

//    For n=2, w=1

n=2;
p  = legendrepol(n,'x')
xr = roots(p);
A  = [];

for j = 1:2
    pd = derivat(p)
    A = [A 2/((1-xr(j)^2)*(horner(pd,xr(j)))^2)]
end

tr = ((x1-x0)./2.*xr)+((x1+x0)./2);

s = ((x1-x0)./2).*f(tr)
I = s*A