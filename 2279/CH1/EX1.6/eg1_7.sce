clear 
clf
clc
interval=input('enter the sampling interval');
n=[-20:1:20];
t=n*interval
for i=1:length(t)
    x(i)=2*t(i);
end
plot(t,x,".");
xtitle("sampled function of x(t)=2*t for all t","number of samples","amplitude");
