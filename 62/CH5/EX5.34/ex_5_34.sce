clear;
clc;
close;
disp("u(t)=integral(delta(t))");
disp("integral(x(t)) <--> %pi*X[0]*delta(w)+X(w)/(%i*w)");
disp("delta(t) <--> 1");
w=-10:0.1:10;
for i=1:length(w)
    if w(i)==0 then
        delta(i)=1;
    else
        delta(i)=0;
    end
end
Xw=%pi*delta'+ones(1,length(w))./(%i*w);
disp( 'U[w]=%pi*delta(w)+1/(%i*w)');
figure
a=gca();
plot(w,abs(Xw));
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X(w)','w')
