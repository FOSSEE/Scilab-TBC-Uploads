clear
clf
clc
n=-20:1:20;
for i=1:length(n)
    if n(i)>=0 then
        x(i)=2;
    else
        x(i)=0;
    end
end
plot(n,x,".");
xtitle("x(n)=0 for n<0 and x(n)=2 for n>=0","number of samples","amplitude");
xgrid(5)
