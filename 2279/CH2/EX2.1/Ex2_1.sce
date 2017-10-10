//Example 2.1
clf
clear
clc
t=[-10:0.01:10];
for i=1:length(t)
    if t(i)>= -0.5 & t(i)<= 0.5 then
        x(i)=t(i)+0.5;
    elseif t(i)>0.5 & t(i)<=1.5 then
            x(i)=1.5-t(i);
        else
            x(i)=0;
        end
end
subplot(3,1,1);
plot2d(t,x,rect=[-4 0 4 2]);
xtitle("x(t) vs t","t in sec","x(t)");
subplot(3,1,2);
plot2d(t-1,x,rect=[-4 0 4 2]);
xtitle("x(t+1) vs t","t in sec","x(t+1)");
subplot(3,1,3);
plot2d(t+2,x,rect=[-4 0 4 2]);
xtitle("x(t-2) vs t","t in sec","x(t-2)");
xset('window',1);
subplot(3,1,1);
plot2d(-t,x,rect=[-4 0 4 2]);
xtitle("x(-t) vs t","t in sec","x(-t)");
subplot(3,1,2);
plot2d(t/2,x,rect=[-4 0 4 2]);
xtitle("x(2t) vs t","t in sec","x(2t)");
subplot(3,1,3);
plot2d(t*2,x,rect=[-4 0 4 2]);
xtitle("x(t/2) vs t","t in sec","x(t/2)");
xset('window',2);
subplot(3,1,1);
plot2d(-t-1,x,rect=[-4 0 4 2]);
xtitle("x(-t+1) vs t","t in sec","x(-t+1)");
subplot(3,1,2);
plot2d(-t+2,x,rect=[-4 0 4 2]);
xtitle("x(-t-2) vs t","t in sec","x(-t-2)");
subplot(3,1,3);
plot2d(-t/2,x,rect=[-4 0 4 2]);
xtitle("x(-2t) vs t","t in sec","x(-2t)");
xset('window',3);
subplot(3,1,1);
plot2d(-t*2,x,rect=[-4 0 4 2]);
xtitle("x(-t/2) vs t","t in sec","x(-t/2)");
subplot(3,1,2);
plot2d(-(t-1)/2,x,rect=[-4 0 4 2]);
xtitle("x(-2t+1) vs t","t in sec","x(-2t+1)");
subplot(3,1,3);
plot2d(-(t+2)/2,x,rect=[-4 0 4 2]);
xtitle("x(-2t-2) vs t","t in sec","x(-2t-2)");
