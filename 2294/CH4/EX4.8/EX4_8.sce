//Find the covolution Of the following signals.
//Example 4.8
clc;
clear;
close;
t=-4:.01:4;
for i=1:length(t)
    if t(i)>=0 & t(i)<=2 then
        x(i)=1;
    else 
        x(i)=0;
    end
    if t(i)>=0 & t(i)<=3 then
    h(i)=1;
else
    h(i)=0;
end
end
y=convol(h,x);//Convolution of the above two signals is done.
subplot(3,1,1);
plot(t,h,'red');
xtitle('input response 2','t','h[t]');
subplot(3,1,2);
plot(t,x,'blue');
xtitle('input response 2','t','x[t]');
subplot(3,1,3);
t1=-8:.01:8;
plot(t1,y,'green');
xtitle('output response','t','y[t1]');
