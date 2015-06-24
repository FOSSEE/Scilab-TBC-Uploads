//Find the covolution Of the following signals.
//Example 4.11
clc;
clear;
close;
t=-5:.01:5;
for i=1:length(t)
    if t(i)<0 | t(i)>2 then
        x(i)=0;
    else 
        x(i)=1;
    end
    if t(i)<-1 | t(i)>2 then
    h(i)=0;
else
    h(i)=2;
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
