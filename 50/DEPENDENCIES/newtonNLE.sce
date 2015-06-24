function [xn] =newtonNLE(x0,f,J)

//Newton-Raphson method applied to a 
//system of linear equations f(x) = 0,
//given the jacobian function J, with
//J is the jacobian matrix of the functions.
//x = [x1;x2;...;xn], f = [f1;f2;...;fn]
//x0 is an initial guess of the solution

N = 3;          //define max. number of iterations
PE= 10^-15;   //define tolerance
maxval = 10000.0;  //define value for divergence
xx = x0;           //load initial guess
for n=1:1:N
    JJ = J(xx);
	if(abs(det(JJ))<PE) then
		error('newtonm - Jacobian is singular - try new x0');
		abort;
	end;
    xn = xx - inv(JJ)*f(xx);
	if(abs(f(xn))<=PE) then break;
    else xx=xn; 
	end;
   if (abs(f(xx))>=maxval) then
		error('Solution diverges');
		abort;
   end;

end;
disp(n," no. of iterations =");
endfunction