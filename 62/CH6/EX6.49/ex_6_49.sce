close;
clc;
clear;
n=0:10;
N=8;
for i=1:length(n)
    if n(i)==0 then
        delta(i)=1;
    else
        delta(i)=0;
    end
end
x=delta';
subplot(2,1,1)
plot2d3(n,x);
a=gca();
plot(n,x,'r.')
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x[n]','n')
X=fft(x,-1);
Y=X(1:find(n==N)-1);
subplot(2,1,2)
plot2d3(n,[Y 0 0 0]);
a=gca();
plot(n,[Y 0 0 0],'r.')
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X[k]','k')
for  i=1:length(n)
    if n(i)>=0 & n(i)<N then
        x(i)=1;
    else
        x(i)=0;
    end
    
end
figure 
subplot(2,1,1)
plot2d3(n,x);
plot(n,x,'r.')
a=gca();
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('x[n]','n')
subplot(2,1,2)
plot2d3(n,round(fft(x,-1)));
plot(n,round(fft(x,-1)),'r.')
a=gca();
poly1=a.children.children;
poly1.thickness=3;
poly1.foreground=2;
xtitle('X[k]','k')