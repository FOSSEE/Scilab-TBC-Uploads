clear;
clc;
close;
dt=.1;
t0=1;//positive number
t=-10:dt:10;
for i=1:length(t)
    if modulo(t(i),t0)==0 then
        x(i)=1;
    else
        x(i)=0;
    end
end
a=gca();
plot2d3(t,x);
plot(t,x,'r.')
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
wmax=10;
w=-wmax:0.1:wmax;
Xw=x'*exp(-%i*(w'*t))*dt;
figure
a=gca();
plot2d3(w,round(abs(Xw)));
poly1=a.children.children;
poly1.thickness=2;
poly1.foreground=2;
xtitle('X(w)','w')
//or the fourier series is doesnt work
//ck=1/t0;
//k=-10:0.1:10;
//x=ck*(exp(%i*2*%pi*t.*k/t0));
//wmax=10;
//w=-wmax:0.1:wmax;
//Xw=x*exp(-%i*(w'*t))*dt;
//clf();
//plot2d3(k,x);
