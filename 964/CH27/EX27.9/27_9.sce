clc;
clear;
function yp=predprey(t,y)
    yp=[1.2*y(1)-0.6*y(1)*y(2);-0.8*y(2)+0.3*y(1)*y(2)];
endfunction
t=0:0.1:20;
y0=[2 1];
sol=ode(y0,0,t,predprey);
count=1;
for i=1:2:401
    x(count)=sol(i);
    z(count)=sol(i+1);
    count=count+1;
end

plot(t,x)
plot(t,z)
xtitle("y vs t", "t","y")
clf();
plot(x,z)
xtitle("space-space plot (y1 vs y2)", "y1","y2")
