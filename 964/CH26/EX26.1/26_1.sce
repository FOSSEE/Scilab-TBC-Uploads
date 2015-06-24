clc;
clear;
function yp=f(t,y)
    yp=-1000*y+3000-2000*exp(-t)
endfunction
y0=0;
//explicit euler
h1=0.0005;
y1(1)=y0;
count=2;
t=0:0.0001:0.006
for i=0:0.0001:0.0059
    y1(count)=y1(count-1)+f(i,y1(count-1))*h1
    count=count+1;
end
plot(t,y1)
h2=0.0015;
y2(1)=y0;
count=2;
t=0:0.0001:0.006
for i=0:0.0001:0.0059
    y2(count)=y2(count-1)+f(i,y2(count-1))*h2
    count=count+1;
end
plot(t,y2,'.-')
xtitle("y vs t","t","y")
h=legend(["h-0.0005","h=0.0015"])
clf();
//implicit order
h3=0.05;
y3(1)=y0;
count=2;
t=0:0.01:0.4
for j=0:0.01:0.39
    y3(count)=(y3(count-1)+3000*h3-2000*h3*exp(-(j+0.01)))/(1+1000*h3)
    count=count+1;
end

plot(t,y3)
xtitle("y vs t","t","y")
