// example 6.27
// solving IVP by 3rd order adams moulton
// u'=t^2+u^2,    u(1)=2,
// h=0.1,       [1,1.2]
deff('[z]=f(t,u)','z=t^2+u^2');
t0=1;u0=2;h=0.1;tn=1.2;
// third order adams moulton method,
// u(j+2)=u(j+1)+(h/12)*(5*f(t(j+2),u(j+2))+8*f(t(j+1),u(j+1))-f(t(j),u(j)));-  is the expression for adamsbas-moulton3


// on observing the IVP we can  inffer that this would be a non linear equation,
// u(j+2)=u(j+1)+(h/12)*(5*((t(j+2))^2+(u(j+2))^2)+8*((t(j+1))^2+(u(j+1))^2)-((t(j))^2+(u(j))^2))

t = [t0:h:tn]; u = zeros(t); n = length(u); u(1) = u0;
for j = 1:n-2
    if j==1 then
         k1=h*f(t(j),u(j));
    k2=h*f(t(j)+h,u(j)+k1);
	u(j+1) = u(j) + (k2+k1)/2;
    disp(u(j+1))
    end;
end;

// hence the third order adams moulton expression turns to be,
// u(2)= 0.041667*(u(2))^2+3.194629     
// let us use newton raphsom method to solve this,
deff('[w]=F(u2)','w=-u2+ 0.041667*(u2)^2+3.194629')    // u2=u(2)
deff('[x]=Fp(u2)','x=-1+ 0.041667*2*u2')

// let us assume the initial guess of u(2)=u(1);

newton(2.633333,F,Fp) 