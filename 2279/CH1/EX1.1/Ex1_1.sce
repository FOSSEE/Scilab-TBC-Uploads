clf
clc
clear
t=[-20:0.01:20];
for i=1:length(t)
    x(i)=2;
end
plot(t,x);
xtitle("x(t)=2 for all t","time","amplitude");
xgrid(5)
