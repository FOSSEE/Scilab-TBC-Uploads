//Example 2.2
clf
clear
clc
t=[-10:0.01:10];
for i=1:length(t)
    if t(i)>= -2 & t(i)<=4 then
        x(i)=(t(i)+2)/6;
        else
            x(i)=0;
        end
end
subplot(3,1,1);
plot2d(t,x,rect=[-10 0 10 2]);
xtitle("x(t) vs t","t in sec","x(t)");
subplot(3,1,2);
plot2d(t-1,x,rect=[-10 0 10 2]);
xtitle("x(t+1) vs t","t in sec","x(t+1)");
subplot(3,1,3);
plot2d(t+1,x,rect=[-10 0 10 2]);
xtitle("x(t-1) vs t","t in sec","x(t-1)");
xset('window',1);
subplot(3,1,1);
plot2d(t/2,x,rect=[-10 0 10 2]);
xtitle("x(2t) vs t","t in sec","x(2t)");
subplot(3,1,2);
plot2d(2*t,x,rect=[-10 0 10 2]);
xtitle("x(t/2) vs t","t in sec","x(t/2)");
subplot(3,1,3);
plot2d(-t/3,x,rect=[-10 0 10 2]);
xtitle("x(-3t) vs t","t in sec","x(-3t)");
xset('window',2);
subplot(3,1,1);
plot2d(-(t-3),x,rect=[-10 0 10 2]);
xtitle("x(3-t) vs t","t in sec","x(3-t)");
subplot(3,1,2);
plot2d(-(t-2)/2,x,rect=[-10 0 10 2]);
xtitle("x(-2t+2) vs t","t in sec","x(-2t+2)");
