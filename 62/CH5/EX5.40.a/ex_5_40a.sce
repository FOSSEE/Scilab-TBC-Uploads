clear;
clc;
close;
disp('x(-t) <--> X(-w)=X*(w)');
t=-10:0.1:10;
u=[ones(1,find(t==0)) zeros(1,length(t)-find(t==0))];
a=gca();
plot(t,u);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('u(-t)','t')
w=-10:0.1:10;
for i=1:length(w)
    if w(i)==0 then
        delta(i)=1;
    else
        delta(i)=0;
    end
end
Xw=%pi*delta'-ones(1,length(w))./(%i*w);
disp( 'U[-w]=%pi*delta(w)-1/(%i*w)');