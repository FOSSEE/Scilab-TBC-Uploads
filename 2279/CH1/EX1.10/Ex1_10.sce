clear
clf
clc
n=-20:1:20;
for i=1:length(n)
        x(i)=0.5;
end
subplot(2,1,1)
plot(n,x,".");
xtitle("x(n)=0.5 for all n","number of samples","amplitude");
xgrid(5)
y=0.5*x;
subplot(2,1,2)
plot(n,y,".");
xtitle("y(n)=0.5*x(n) for all n","number of samples","amplitude");
xgrid(5)
