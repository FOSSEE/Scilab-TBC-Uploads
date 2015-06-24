clear
clf
clc
t=-20:0.01:20;
for i=1:length(t)
    if t(i)>0 then
        x1(i)=0.5;
    else
        x1(i)=-0.5;
    end
end
subplot(3,1,1)
plot(t,x1);
xtitle("x1(t)=-0.5 for t<0 and x1(t)=0.5 for t>0","time","amplitude");
xgrid(5);
subplot(3,1,2)
for i=1:length(t)
    x2(i)=-t(i);
end
plot(t,x2);
xtitle("x2(t)=-t for all t","time","amplitude");
xgrid(5);
subplot(3,1,3)
for i=1:length(t)
    x3(i)=t(i).^2;
end
plot(t,x3);
xtitle("x3(t)=t^2 for all t","time","amplitude");
xgrid(5);
