clear;
close;
clc;
T0=4;
w0=%pi/2;
y=[1 0 0 0];
n=-8:7;
x=[];
for i=1:length(n)/T0
    x=[x y];
end
plot2d3(n,x);
plot(n,x,'r.');
xtitle('x[n]','n')
for k=-9:9
     c(k+10)=0;
    for n=0:3
       c(k+10)=c(k+10)+ (1/4)*(y(n+1))*(%e)^(%i*w0*k*n);
    end
end
k=-9:9;
figure
plot2d3(k,abs(c));
plot(k,c,'r.')
xtitle('x[n]','n')