clear;
close;
clc;
T0=10;
w0=%pi/5;
y=[ones(1,5) zeros(1,5)];
n=-20:19;
x=[];
for i=1:length(n)/T0
    x=[x y];
end
plot2d3(n,x);
plot(n,x,'r.')
xtitle('x[n]','n')
for k=0:9
     c(k+1)=0;
    for n=0:4
       c(k+1)=c(k+1)+ (1/4)*(y(n+1))*(%e)^(%i*w0*k*n);
    end
end
c=[c($:-1:2) ;c];
k=-9:9;
figure
plot2d3(k,abs(c));
plot(k,abs(c),'r.--')
xtitle('|ck|','k')