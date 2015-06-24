clear;
clc;
close;
disp("system given is dy(t)/dt+2y(t)=x(t)+dx(t)/dt");
disp("taking fourier transform on both sides we get");
disp("H(w)=Y(w)/X(w)=1-(1/(2+%j*w))");
w=-10:0.1:10;
dw=.1;
Hw=1-ones(1,length(w))./(2+%i*w);
t=0:0.1:10;
d=gca()
plot(w,Hw);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(w)','w')
for i=1:length(t)
    if t(i)==0 then
        delta(i)=1;
    else
        delta(i)=0;
    end
end
h=delta'-exp(-2*t);
figure;
d=gca()
plot(t,(h));
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('h(t)','t')