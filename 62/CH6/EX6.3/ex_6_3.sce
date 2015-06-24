clear;
close;
clc;
w0=2*%pi/4;//%pi/2
N0=4;
n=-8:7;
y=0:3;
x=[];
for i=1:length(n)/4
    x=[x y];
end
plot2d3(n,x');
plot(n,x','r.')
xtitle('x[n]','n')
for k=0:3
    c(k+1)=0;
    for n=0:3
       c(k+1)=c(k+1)+ (1/4)*(y(n+1))*(-%i)^(k*n);
    end
end
