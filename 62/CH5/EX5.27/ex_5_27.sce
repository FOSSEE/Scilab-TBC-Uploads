clear;
clc;
close;
A=1/2;
dw=.1;
w0=4;
a=1;
w=-10:dw:10;
for i=1:length(w)
    if ((w(i)>(-w0-a) & w(i)<(-w0+a)) | (w(i)>(w0-a) & w(i)<(w0+a))) then
   Xw(i)=2;
else
    Xw(i)=0;
    end
   
end
a=gca();
plot(w,Xw);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(w)','w')
tmax=10;
t=-tmax:0.1:tmax;
x=Xw'*exp(-%i*(t'*w))*dw;
x_mag=(x);
figure
a=gca();
plot2d(t,x_mag);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')