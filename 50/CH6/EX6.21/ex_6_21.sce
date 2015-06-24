// example  no. 6.21,
// caption: solving the IVP by implicit RK2 method 

// u'=f(t,u)
// u'=-2tu^2
//u(0)=1,h=0.2;
t0=0;h=0.2;tn=.4;u0=1;
deff('[z]=f(t,u)','z=-2*t*u^2');
umaxAllowed = 1e+100;

t = [t0:h:tn]; u = zeros(t); n = length(u); u(1) = u0;

for j = 1:n-1
   // k1=h*f(t(j)+h/2,u(j)+k1/2);
	// conidering the IVP we can infer that the above expression in non linear in k1,
// hence we use newton rapson method to solve for k1;
deff('[w]=F(u2)','w=k1+h*(2*t(j)+h)*(u(j)+k1/2)^2')    // u2=u(2)
deff('[x]=Fp(u2)','x=1+h*(2*t(j)+h)*(u(j)+k1/2)')

k1=h*f(t(j),u(j));

newton(k1,F,Fp);
   u(j+1) = u(j) +k1
   disp(u(j+1))
	
end;

