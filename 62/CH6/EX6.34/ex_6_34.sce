clear;
clc;
close;
disp("given system is y[n]=x[n]+x[n-1]");
disp("taking fourier transform H(w)=Y(w)/X(w)=1+e^-j*w");
//for impulse response x[n]=delta[n]
n=-10:10;
for i=1:length(n)
    if n(i)==0 then
        delta1(i)=1;
        delta2(i)=0;
    elseif n(i)==1
        delta2(i)=1;
        delta1(i)=0
    else 
        delta1(i)=0;
        delta2(i)=0
    end
end 
h=delta1+delta2;
plot2d3(n,h);
plot(n,h,'r.')
xtitle('h[n]','n')
figure
subplot(2,1,1)
w=-3:0.01:3;
Hw=1+%e^(-%i*w);
plot(w,abs(Hw))
xtitle('|H(w)|','w')
subplot(2,1,2)
a=gca();
plot(w,phasemag(Hw)*%pi/180)
xtitle('theta(H(w))','w')
a.y_location="origin";
//3-db bandwidth
cutoff=find(round(100*abs(Hw))==round(100*max(abs(Hw))/sqrt(2)));
threedb=w(cutoff(3));
disp(threedb,"3db bandwidth=")