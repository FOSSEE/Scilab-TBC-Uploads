clear;
clc;
close;
A=1;
t0=1;
dt=.1;
t=-10:dt:10;
for i=1:length(t)
    if t(i)>-t0 & t(i)<t0 then
        x(i)=A;
    else
        x(i)=0;
    end
end
a=gca();
plot(t,x);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
//clf();
wmax=10;
w=-wmax:0.1:wmax;
Xw=x'*exp(-%i*(w'*t))*dt;
Xw_mag=(Xw);
Xw_mag=[Xw_mag($:-1:1) Xw_mag];
w=[w($:-1:1) w];
figure
a=gca();
plot2d(w,Xw_mag);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('|X(w)|','w')