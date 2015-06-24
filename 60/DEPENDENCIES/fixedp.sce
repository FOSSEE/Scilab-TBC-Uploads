function [x]=fixedp(x0,f)
//fixed-point iteration
N = 100; eps = 1.e-5; // define max. no. iterations and error
maxval = 10000.0;     // define value for divergence
a = x0;
while (N>0)
	xn = f(a);
	if(abs(xn-a)<eps)then
		x=xn
		disp(100-N);
		return(x);
	end;
	if (abs(f(x))>maxval)then
		disp(100-N);
		error('Solution diverges');
		abort;
	end;
	N = N - 1;
	xx = xn;
end;
error('No convergence');
abort;
//end function
