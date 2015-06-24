clear;
clc;
close;
w=-10:0.1:10;
Hw=[exp(%i*%pi/2)*ones(1,find(w==0)) exp(-%i*%pi/2)*ones(1,find(w==0)-1)];
d=gca();
plot(w,imag(Hw));
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('H(w)','w')
disp("H(w)=-%i*sgn(w)");
disp("we know sgn(t) <--> 2/(j*w)")
disp("by duality property 2/(j*t) <-->2*%pi*sgn(-w)=-2*%pi*sgn(w) ")
disp("therefore 1/(%pi*t) <--> -j*sgn(w)");
t=0.1:0.1:10;
h=ones(1,length(t))./(%pi*t);
figure
d=gca()
plot(t,h);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('h(t)','t')
w0=2;
x=cos(w0*t);
figure
d=gca();
plot(t,x);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x(t)','t')
y=convol(x,h);
figure
d=gca()
plot(t,y(1:length(t)));
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('y(t)','t')