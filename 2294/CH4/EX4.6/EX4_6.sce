//Find the covolution Of the following signals.
//Example 4.6<i>
clc;
clear;
close;
a=.5;
b=.6;
t=-4:.01:4;
for i=1:length(t)
    if t(i)<0 then
        x1(i)=0;x2(i)=0;
    else
        x1(i)=exp(-a.*t(i));
        x2(i)=exp(-b.*t(i));
    end
end
y=convol(x1,x2);
f=scf(0);
subplot(3,1,1);
plot(x1,t,'red');
xtitle('x1[t]');
subplot(3,1,2);
plot(x2,t,'blue');
xtitle('x2[t]');
subplot(3,1,3);
t1=-8:.01:8;
plot(t1,y,'green');
xtitle('y[n]');
xs2jpg(0, 'EX4_6_1-plot-a.jpg');
//Find the covolution Of the following signals.
//Example 4.6<ii>
clc;
clear;
close;
t=-4:.01:4;
for i=1:length(t)
    if t(i)<0 then
        x1(i)=0;x2(i)=0;
    else
        x1(i)=1;
        x2(i)=1;
    end
end
y=convol(x1,x2);
f=scf(0);
subplot(3,1,1);
plot(x1,t,'red');
xtitle('x1[t]');
subplot(3,1,2);
plot(x2,t,'blue');
xtitle('x2[t]');
subplot(3,1,3);
t1=-8:.01:8;
plot(t1,y,'green');
xtitle('y[n]');
xs2jpg(0, 'EX4_6_2-plot-a.jpg');
//Find the covolution Of the following signals.
//Example 4.6<iii>
clc;
clear;
close;
t=-4:.01:4;
for i=1:length(t)
    if t(i)<0 then
        x1(i)=0;x2(i)=0;
    else
        x1(i)=t(i);
        x2(i)=1;
    end
end
y=convol(x1,x2);
f=scf(0);
subplot(3,1,1);
plot(x1,t,'red');
xtitle('x1[t]');
subplot(3,1,2);
plot(x2,t,'blue');
xtitle('x2[t]');
subplot(3,1,3);
t1=-8:.01:8;
plot(t1,y,'green');
xtitle('y[n]');
xs2jpg(0, 'EX4_6_3-plot-a.jpg');
//Find the covolution Of the following signals.
//Example 4.6<iv>
clc;
clear;
close;
t=-4:.01:4;
for i=1:length(t)
    if t(i)<0 then
        x1(i)=0;x2(i)=0;
    else
        x1(i)=sin(t(i));
        x2(i)=1;
    end
end
y=convol(x1,x2);
f=scf(0);
subplot(3,1,1);
plot(x1,t,'red');
xtitle('x1[t]');
subplot(3,1,2);
plot(x2,t,'blue');
xtitle('x2[t]');
subplot(3,1,3);
t1=-8:.01:8;
plot(t1,y,'green');
xtitle('y[n]');
xs2jpg(0, 'EX4_6_4-plot-a.jpg');
