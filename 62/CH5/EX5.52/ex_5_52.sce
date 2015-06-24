clear;
clc;
close;
w=-10:0.1:10;
wc=2;
for i=1:length(w)
    if w(i)>-wc & w(i)<wc then
        Hw(i)=1;
    else
        Hw(i)=0;
    end
end
d=gca()
plot(w,Hw);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('H(w)','w')
disp("x(t)=sin(a*t)/(%pi*t)");
disp("X(w)= 1 for |w|<a ");
disp("      0 elsewhere");
a=1;
for i=1:length(w)
    if w(i)>-a & w(i)<a then
        Xw(i)=1;
    else
        Xw(i)=0;
    end
end
Yw=Xw.*Hw;
figure
d=gca()
plot(w,Yw);
poly1=d.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('Y(w)','w')
disp("therefore y(t)=x(t) for a<wc");
disp("and y(t)=h(t) for a>wc");
disp("thus the output suffers distortion when a>wc");