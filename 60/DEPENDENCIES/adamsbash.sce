
function [u,t] = adamsbashforth3(u0,t0,tn,h,f)

//adamsbashforth3 3rd order method solving ODE
//  du/dt = f(u,t), with initial 
//conditions u=u0 at t=t0.  The 
//solution is obtained for t = [t0:h:tn]
//and returned in u

umaxAllowed = 1e+100;

t = [t0:h:tn]; u = zeros(t); n = length(u); u(1) = u0;
for j = 1:n-1
if j<3 then
      k1=h*f(t(j),u(j));
    k2=h*f(t(j)+h,u(j)+k1);
	u(j+1) = u(j) + (k2+k1)/2;
end;  
   
if j>=2 then
       u(j+2) = u(j+1) + (h/12)*(23*f(t(j+1),u(j+1))-16*f(t(j),u(j))+5*f(t(j-1),u(j-1)));
end;
end;
endfunction
 


