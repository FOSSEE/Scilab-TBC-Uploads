clc
clear
clf
interval=input('enter the value of time interval T between two samples');
t=(-20*interval):interval:(20*interval);
for i=1:length(t)
    if t(i)<0 then
        x(i)=-1;
    elseif t(i)>0 then
        x(i)=1;
    else
        x(i)=0;
    end
end
plot(t,x,".");
xtitle("x(t)=1 for positive values of t..., x(t)=0 for t=0...., x(t)=-1 for negative values of t","time","amplitude");
xgrid(5)
