//Find the covolution Of the following signals.
//Example 4.9
clc;
clear;
close;
t=-10:.01:10;
//input signal:x(t)=u(t-3)-u(t-5)
for i=1:length(t)
    if t(i)<3 | t(i)>5 then
        x(i)=0;
    else 
        x(i)=1;
    end
    //h(t)=exp(-3*t)*u(t)
    if t(i)>=0 then
    h(i)=exp(-3.*t(i));
else
    h(i)=0;
end
end
y=convol(h,x);//cconvolution of the above two signals
subplot(3,1,1);
plot(t,h,'red');
xtitle('input response 2','t','h[t]');
subplot(3,1,2);
plot(t,x,'blue');
xtitle('input response 2','t','x[t]');
subplot(3,1,3);
t1=-20:.01:20;
plot(t1,y,'green');
xtitle('output response','t','y[t1]');
