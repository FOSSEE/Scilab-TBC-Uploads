function [x,y] = Euler1(x0,y0,xn,h,g)

//Euler 1st order method solving ODE
//  dy/dx = g(x,y), with initial 
//conditions y=y0 at x = x0.  The 
//solution is obtained for x = [x0:h:xn]
//and returned in y

ymaxAllowed = 1e+100

x = [x0:h:xn];
y = zeros(x);
n = length(y);
y(1) = y0;

for j = 1:n-1
	y(j+1) = y(j) + h*g(x(j),y(j));
	if y(j+1) > ymaxAllowed then
           disp('Euler 1 - WARNING: underflow or overflow');
	   disp('Solution sought in the following range:');
           disp([x0 h xn]);
	   disp('Solution evaluated in the following range:');
	   disp([x0 h x(j)]);
           n = j;
           x = x(1,1:n); y = y(1,1:n);
	   break;
	end;
end;

endfunction

//End function Euler1


