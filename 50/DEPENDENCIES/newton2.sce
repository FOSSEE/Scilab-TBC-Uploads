function [x]=newton2(x0,f,fp)
//newton-raphson algorithm
N = 100; eps = 1.e-5; // define max. no. iterations and error
maxval = 10000.0;     // define value for divergence
xx = x0;
while (N>0)
	xn = xx-f(xx)/fp(xx);
	if(abs(f(xn))<=eps) then x=xn;
		disp(100-N); 
		return(x);
	end;
	if (abs(f(xx))>maxval) then disp(100-N);
		error('Solution diverges');
		abort;
	end;
	N = N - 1;
	xx = xn;
end;
error('No convergence');
abort;
endfunction