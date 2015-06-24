clear;
clc;
close;
a=2;
t=-10:0.1:10;
x=[exp(a*t(1:find(t==0))) exp(-a*t(find(t==0)+1:$))];
d=gca()
plot(t,x);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
disp("1/2*exp(-a*|t|) is even part of 1/2*exp(-a*t)*u(t)");
disp("even(x(t)) <--> real(X(w))=a/(a^2+w^2)");
w=-10:0.01:10;
Xw=2*a*ones(1,length(w))./(a^2+w^2);
figure
d=gca()
plot(w,Xw);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(w)','w')
//not sure if it works properly