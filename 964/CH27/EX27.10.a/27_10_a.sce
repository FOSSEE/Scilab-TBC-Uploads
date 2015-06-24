clc;
clear;
function yp=vanderpol(t,y)
    yp=[y(2);1*(1-y(1)^2)*y(2)-y(1)]
endfunction
y0=[1 1];
t=0:0.1:20;
sol=ode(y0,0,t,vanderpol);
count=1;
for i=1:2:401
    x(count)=sol(i);
    count=count+1;
end
plot(t,x)
xtitle("y vs t","t","y")
