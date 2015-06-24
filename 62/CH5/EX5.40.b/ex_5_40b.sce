clear;
clc;
close;
disp('x(-t) <--> X(-w)=X*(w)');
a=0.1;
t=-10:0.1:10;
u=[ones(1,find(t==0)) zeros(1,length(t)-find(t==0))];
x=exp(-a*t).*u;
d=gca();
plot(t,x);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('e^(a*t)*u(-t)','t')
w=-10:0.1:10;
Xw=ones(1,length(w))./(a-(%i*w));
disp( 'exp(-a*t)*u(-t) <--> 1/(a-(%i*w))');
figure
d=gca();
plot(w,abs(Xw));
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('U(w)','w')