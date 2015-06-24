function [u] = backeuler(u0,t0,tn,h,f)

//backeuler 1st order method solving ODE
//  du/dt = f(u,t), with initial 
//conditions u=u0 at t=t0.  The 
//solution is obtained for t = [t0:h:tn]
//and returned in u

umaxAllowed = 1e+100;

 t = [t0:h:tn]; u = zeros(t); n = length(u); u(1) = u0;

for j=1:n-1
    u(j+1)=u(j);
for i = 0:5
	u(j+1) = u(j) + h*f(t(j+1),u(j+1));
	i=i+1;
end;
end;


endfunction
