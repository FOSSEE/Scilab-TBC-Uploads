clear;
close;
clc;
//cos(%pi*n/4)
N0=8;
w0=2*%pi/N0;
n=-8:8;
x=cos(%pi*n/4);
subplot(2,1,1)
xtitle('x[n]','n')
plot2d3(n,x);
plot(n,x,'r.');
for k=-6:6
     c(k+7)=0;
    for n=0:7
       c(k+7)=c(k+7)+ (1/8)*(x(n+1))*(%e)^(%i*w0*k*n);
    end
end
k=-6:6;
subplot(2,1,2)
xtitle('|ck|','k')
plot2d3(k,abs(c));
plot(k,c,'r.')
//cos(%pi*n/3)+sin(%pi*n/4)
N0=24;
w0=2*%pi/N0;
n=-24:24;
x=cos(%pi*n/3)+sin(%pi*n/4);
figure
subplot(2,1,1)
xtitle('x[n]','n')
plot2d3(n,x);
plot(n,x,'r.--');
for k=-24:24
     c(k+25)=0;
    for n=0:23
       c(k+25)=c(k+25)+ (1/N0)*(x(n+1))*(%e)^(%i*w0*k*n);
    end
end
k=-24:24;
subplot(2,1,2)
xtitle('|ck|','k')
plot2d3(k,abs(c));
plot(k,c,'r.')
//[cos(%pi*n/8)]^2
N0=8;
w0=2*%pi/N0;
n=-8:8;
x=[cos(%pi*n/8)]^2;
clear c;
figure
subplot(2,1,1)
xtitle('x[n]','n')
plot2d3(n,x);
plot(n,x,'r.--');
for k=-6:6
     c(k+7)=0;
    for n=0:7
       c(k+7)=c(k+7)+ (1/N0)*(x(n+1))*(%e)^(%i*w0*k*n);
    end
end
k=-6:6;
subplot(2,1,2)
xtitle('|ck|','k')
plot2d3(k,abs(c));
plot(k,c,'r.')
disp("fourier series is x[n]=1/N0*sum(c(k)*e^%i*w0*n*k)");