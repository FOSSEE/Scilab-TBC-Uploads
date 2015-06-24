clc;
clear;
function yp=f(x,y)
    yp=[y(2);-16.1*y(1)];
endfunction
x=0:0.1:4
y0=[0.1 0];
sol=ode(y0,0,x,f);
count=1;
disp(sol)
for i=1:2:81
    a(count)=sol(i);
    b(count)=sol(i+1);
    count=count+1;
end
plot(x,a)
plot(x,b,".-")
h1=legend(["y1,y3","y2,y4"])
xtitle("y vs x","x","y")
function yp=g(x,y)
    yp=[y(2);-16.1*sin(y(1))];
endfunction
sol=ode(y0,0,x,g);
count=1;
disp(sol)
for i=1:2:81
    a(count)=sol(i);
    b(count)=sol(i+1);
    count=count+1;
end
plot(x,a)
plot(x,b,".-")
clf();
y0=[%pi/4 0];
sol=ode(y0,0,x,f);
count=1;
disp(sol)
for i=1:2:81
    a(count)=sol(i);
    b(count)=sol(i+1);
    count=count+1;
end
plot(x,a)
plot(x,b,".-")

xtitle("y vs x","x","y")
sol=ode(y0,0,x,g);
count=1;
disp(sol)
for i=1:2:81
    a(count)=sol(i);
    b(count)=sol(i+1);
    count=count+1;
end
plot(x,a,'o-')
plot(x,b,"x-")
h1=legend(["y1","y2","y3","y4"])
