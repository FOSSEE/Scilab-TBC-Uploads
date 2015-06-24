close;
clc;
clear;
disp("given system y[n]=1/3*{x[n]+x[n-1]+x[n-2]}");
disp("taking h[n]=1/3*{delta[n]+delta[n-1]+delta[n-2]}")
n=-10:10;
for i=1:length(n)
    if n(i)==0 then
        delta1(i)=1;
        delta2(i)=0;
        delta3(i)=0;
    elseif n(i)==1
        delta2(i)=1;
        delta1(i)=0;
        delta3(i)=0;
    elseif n(i)==2
        delta1(i)=0;
        delta2(i)=0;
        delta3(i)=1;
    else 
        delta1(i)=0;
        delta2(i)=0;
        delta3(i)=0;
    end
end 
h={delta1+delta2+delta3}/3;
plot2d3(n,h)
plot(n,h,'r.')
xtitle('h[n]','n')
disp("taking DTFT H(w)={1+e^-j*w+e^-2*j*w}/3");
w=-3:0.1:3;
Hw={1+%e^(-%i*w)+%e^(-2*%i*w)}/3;
figure
subplot(2,1,1)
plot(w,abs(Hw));
xtitle('|H(w)|','w')
subplot(2,1,2)
plot(w,phasemag(Hw)*%pi/180);
xtitle('phase(H(w))','w')