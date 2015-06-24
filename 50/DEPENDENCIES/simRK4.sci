function [u,v,t] = simRK4(u0,v0,t0,tn,h,f1,f2)

//  RK4 method solving simultanious ODE
//  du/dt = f1(t,u,v), dv/dt = f2(t,u,v) with initial  
//conditions u=u0,v=v0 at t=t0.  The 
//solution is obtained for t = [t0:h:tn]
//and returned in u,v

umaxAllowed = 1e+100;

t = [t0:h:tn]; u = zeros(t);v=zeros(t) ;n = length(u); u(1) = u0;v(1)=v0

for j = 1:n-1
    k11=h*f1(t(j),u(j),v(j));
    k21=h*f2(t(j),u(j),v(j));
    k12=h*f1(t(j)+h/2,u(j)+k11/2,v(j)+k21/2);
    k22=h*f2(t(j)+h/2,u(j)+k11/2,v(j)+k21/2);
    k13=h*f1(t(j)+h/2,u(j)+k12/2,v(j)+k22/2);
    k23=h*f2(t(j)+h/2,u(j)+k12/2,v(j)+k22/2);
    k14=h*f1(t(j)+h,u(j)+k13,v(j)+k23);
    k24=h*f2(t(j)+h,u(j)+k13,v(j)+k23);
	u(j+1) = u(j) + (1/6)*(k11+2*k12+2*k13+k14);
    v(j+1) = v(j) + (1/6)*(k21+2*k22+2*k23+k24);
	
end;

endfunction
