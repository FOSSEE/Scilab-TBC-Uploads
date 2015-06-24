syms t w0 W
w=-10:0.1:10;
wc=2;
for i=1:length(w)
    if w(i)>-wc & w(i)<wc then
        Hw(i)=1;
    else
        Hw(i)=0;
    end
end
a=gca();
plot(w,Hw);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
disp("we know y(t)=x(t) for w<wc");
Xw=ones(1,length(w))./(2+%i*w);
ex=integ(exp(-4*t),t,0,%inf);
disp("energy in x(t) is 1/4");
ey=(1/(2*%pi))*integ(1/(4+W^2),W,-wc,wc);
ratio=ey/ex;
disp("the ratio is two therefore wc=2 rad/s ");
