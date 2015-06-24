function [u,v,t] = simeulercauchy(u0,v0,t0,tn,h,f1,f2)


//  du/dt = f1(t,u,v), dv/dt = f2(t,u,v) with initial  
//conditions u=u0,v=v0 at t=t0.  The 
//solution is obtained for t = [t0:h:tn]
//and returned in u,v


umaxAllowed = 1e+100;

t = [t0:h:tn]; u = zeros(t);v= zeros(t); n = length(u); u(1) = u0;v(1)=v0;

for j = 1:n-1
    k11=h*f1(t(j),u(j),v(j));
    k21=h*f2(t(j),u(j),v(j));    
    k12=h*f1(t(j)+h,u(j)+k11,v(j)+k21);
    k22=h*f2(t(j)+h,u(j)+k11,v(j)+k21);
	u(j+1) = u(j) + (k11+k12)/2;
    v(j+1) = v(j) + (k21+k22)/2;
	
end;

endfunction
