clf
clear
clc
t=[-20:0.01:20];
for i=1:length(t)
    x=2*t;
end
plot(t,x);
xtitle("x(t)=2*t for all t","time","amplitude");
xgrid(5)
