clc;
clear;
clf();
function yp=vanderpol1(t,y)
    yp=[y(2);1000*(1-y(1)^2)*y(2)-y(1)]
endfunction
t=0:3000;
yo=[1 1];
sol=ode(y0,0,t,vanderpol1);
count=1;

for i=1:2:6001
    z(count)=sol(i)*-1;
    count=count+1;
end

plot(t,z)
xtitle("y vs t","t","y")
