clear;
clc;
close;
dt=.1;
t=-10:dt:10;
u=[zeros(1,find(t==0)) ones(1,length(t)-find(t==0))];
a=gca();
plot(t,u);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('u(t)','t')
u1=1/2;//even part
figure
a=gca()
plot(t,u1);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('even part of u(t)','t')
h=find(t==0);
u2=[-ones(1,h) ones(1,length(t)-h)];//odd part
figure
a=gca()
plot(t,u2);
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('odd part of u(t)','t')
//u(t)=u1(t)+u2(t)
//.: U[w]=U1[w]+U2[w] i.e U[w]=%pi*delta(w)+1/(%i*w)
w=-10:0.1:10;
for i=1:length(w)
    if w(i)==0 then
        delta(i)=1;
    else
        delta(i)=0;
    end
end
Uw=ones(1,length(w))./(%i*w)+%pi*delta';
figure
a=gca()
plot2d(w,abs(Uw));
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('U(w)','w')