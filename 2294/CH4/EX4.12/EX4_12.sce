//Find the covolution Of the following signals.
//Example 4.12 <i>
clc;
clear;
close;
t=-5:.01:5;
for i=1:length(t)
    if t(i)>=0 & t(i)<=2 then
    x(i)=sin(%pi*t(i));
else
    x(i)=0;
    end
if t(i)<1 | t(i)>3 then
    h(i)=0;
else
    h(i)=1;
end
end
y=convol(h,x);//convolution of the above two signals is done here.
subplot(3,1,1);
plot(t,h,'red');
xtitle('input response 2','t','h[t]');
subplot(3,1,2);
plot(t,x,'blue');
xtitle('input response 2','t','x[t]');
subplot(3,1,3);
t1=-10:.01:10;
plot(t1,y,'green');
xtitle('output response','t','y[t1]');
//Find the covolution Of the following signals.
//Example 4.12 <ii>
clc;
clear;
close;
t=-5:.01:5;
for i=1:length(t)
    if t(i)<0  then
        x(i)=0;
    elseif  t(i)<1 then
        x(i)=1+t(i);
    elseif t(i)<2 then
    x(i)=1-t(i);
else
    x(i)=0;
end
if t(i)<0 | t(i)>2 then
    h(i)=0;
else
    h(i)=1;
end
end
y=convol(h,x);
subplot(3,1,1);
plot(t,h,'red');
xtitle('input response 2','t','h[t]');
subplot(3,1,2);
plot(t,x,'blue');
xtitle('input response 2','t','x[t]');
subplot(3,1,3);
t1=-10:.01:10;
plot(t1,y,'green');
xtitle('output response','t','y[t1]');
