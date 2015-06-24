//Example 6 0f question and answer section
clc;
clear; close;
n=-5:.01:5;
for i=1:length(n)
    if n(i)<0 then
        x(i)=0;h1(i)=0;h2(i)=0;
    else
        x(i)=1;h1(i)=2;h2(i)=3;
    end
    h3(i)=h1(i)+h2(i)//when in parallel
    h4(i)=h1(i).*h2(i)//when in series
end
y1=convol(x,h3);
y2=convol(x,h4);
subplot(4,2,1);
plot(n,x,'black');
xtitle('x[n]');
subplot(4,2,2);
plot(n,h1,'red');
xtitle('h1[n]');
subplot(4,2,3);
plot(n,h2,'red');
xtitle('h2[n]');
subplot(4,2,4);
plot(n,h3,'blue');
xtitle('h3[n]');
subplot(4,2,5);
plot(n,h4,'blue');
xtitle('h4[n]');
subplot(4,2,6);
n1=-10:.01:10;
plot(n1,y1,'green');
xtitle('y1[n]');
subplot(4,2,7);
n1=-10:.01:10;
plot(n1,y2,'green');
xtitle('y2[n]');
