        //    PG (389)

//    Using Adams-Moulton Formula

deff('[z]=f(x,y)','z=(1/(1+x^2))-2*y^2')
y0 = 0;

//    Solution is Y(x) = x/(1+x^2)

function [y,x] = adamsmoulton4(y0,x0,xn,h,f)

//adamsmoulton4 4th order method solving ODE
//  dy/dx = f(y,x), with initial 
//conditions y=y0 at x=x0.  The 
//solution is obtained for x = [x0:h:xn]
//and returned in y

umaxAllowed = 1e+100;

x = [x0:h:xn]; y = zeros(x); n = length(y); y(1) = y0;
for j = 1:n-1
if j<3 then
      k1=h*f(x(j),y(j));
    k2=h*f(x(j)+h,y(j)+k1);
	y(j+1) = y(j) + (k2+k1)/2;
end;  
   
if j>=2 then
    	y(j+2) = y(j+1) + (h/12)*(23*f(x(j+1),y(j+1))-16*f(x(j),y(j))+5*f(x(j-1),y(j-1)));
end;
end;
endfunction

adamsmoulton4(0,2.0,10.0,2.0,f)