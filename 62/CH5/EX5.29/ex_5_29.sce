clear;
clc;
close;
dt=.1;
t=-10:dt:10;
h=find(t==0);
x=[-ones(1,h) ones(1,length(t)-h)];
//sgn(t)=2u(t)-1 .: d(sgn(t))/dt=2delta(t);
a=gca();
plot(t,x);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('sgn(t)','t')
y=diff(x);
y=[y 0];
figure
a=gca();
plot2d3(t,y);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('diff(sgn(t))','t')
wmax=10;
w=-wmax:0.1:wmax;
Xw=y*exp(-%i*(w'*t))*dt*10;
for i=1:length(w)
    if w(i)<>0 then       
 XW(i)=Xw(i)./(%i*w(i));
else
    XW(i)=20;
    end
end
figure
a=gca();
plot2d(w,abs(XW));
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(w)','w')